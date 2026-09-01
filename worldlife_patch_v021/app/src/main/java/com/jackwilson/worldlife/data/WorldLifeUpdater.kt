package com.jackwilson.worldlife.data

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.provider.Settings
import androidx.core.content.FileProvider
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.json.JSONObject
import java.io.File
import java.io.FileOutputStream
import java.net.HttpURLConnection
import java.net.URL
import java.security.MessageDigest

internal data class WorldLifeUpdateInfo(
    val versionName: String,
    val downloadUrl: String,
    val sha256: String,
    val sizeBytes: Long,
)

internal class WorldLifeUpdater(private val context: Context) {
    companion object {
        private const val LATEST_RELEASE_URL =
            "https://api.github.com/repos/jbob-coder/Chatgptjuegolpcal/releases/latest"
        private const val RELEASE_TAG_PREFIX = "worldlife-v"
        private const val APK_ASSET_NAME = "WorldLifeRPG.apk"
        private const val USER_AGENT = "WorldLife-RPG-Android-Updater"
    }

    suspend fun checkForUpdate(): WorldLifeUpdateInfo? = withContext(Dispatchers.IO) {
        val json = requestText(LATEST_RELEASE_URL)
        val release = JSONObject(json)
        val tag = release.optString("tag_name")
        if (!tag.startsWith(RELEASE_TAG_PREFIX)) return@withContext null

        val version = tag.removePrefix(RELEASE_TAG_PREFIX)
        val installedVersion = context.packageManager.getPackageInfo(context.packageName, 0).versionName ?: "0"
        if (!isNewerVersion(version, installedVersion)) return@withContext null

        val assets = release.getJSONArray("assets")
        var result: WorldLifeUpdateInfo? = null
        for (index in 0 until assets.length()) {
            val asset = assets.getJSONObject(index)
            if (asset.optString("name") != APK_ASSET_NAME) continue
            val digest = asset.optString("digest")
            if (!digest.startsWith("sha256:")) {
                throw IllegalStateException("Update asset is missing a SHA-256 digest")
            }
            result = WorldLifeUpdateInfo(
                versionName = version,
                downloadUrl = asset.getString("browser_download_url"),
                sha256 = digest.removePrefix("sha256:").lowercase(),
                sizeBytes = asset.optLong("size", -1L),
            )
            break
        }
        result
    }

    suspend fun downloadUpdate(
        info: WorldLifeUpdateInfo,
        onProgress: (Int?) -> Unit,
    ): File = withContext(Dispatchers.IO) {
        val updateDir = File(context.cacheDir, "updates").apply { mkdirs() }
        val output = File(updateDir, APK_ASSET_NAME)
        val digest = MessageDigest.getInstance("SHA-256")

        openDownloadConnection(info.downloadUrl).useConnection { connection ->
            val expectedLength = connection.contentLengthLong.takeIf { it > 0 }
                ?: info.sizeBytes.takeIf { it > 0 }
            connection.inputStream.use { input ->
                FileOutputStream(output, false).use { fileOutput ->
                    val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                    var total = 0L
                    while (true) {
                        val read = input.read(buffer)
                        if (read < 0) break
                        fileOutput.write(buffer, 0, read)
                        digest.update(buffer, 0, read)
                        total += read
                        onProgress(expectedLength?.let { ((total * 100L) / it).toInt().coerceIn(0, 100) })
                    }
                    fileOutput.fd.sync()
                }
            }
        }

        val actualSha = digest.digest().joinToString("") { "%02x".format(it) }
        if (!actualSha.equals(info.sha256, ignoreCase = true)) {
            output.delete()
            throw IllegalStateException("Downloaded update failed integrity verification")
        }
        output
    }

    fun canRequestInstalls(): Boolean = context.packageManager.canRequestPackageInstalls()

    fun openInstallPermissionSettings() {
        val intent = Intent(
            Settings.ACTION_MANAGE_UNKNOWN_APP_SOURCES,
            Uri.parse("package:${context.packageName}"),
        ).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        context.startActivity(intent)
    }

    fun launchInstaller(apk: File) {
        val uri = FileProvider.getUriForFile(
            context,
            "${context.packageName}.files",
            apk,
        )
        val intent = Intent(Intent.ACTION_INSTALL_PACKAGE).apply {
            data = uri
            addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_ACTIVITY_NEW_TASK)
        }
        context.startActivity(intent)
    }

    private fun requestText(url: String): String {
        val connection = openConnectionFollowingRedirects(url)
        return connection.useConnection { conn ->
            conn.inputStream.bufferedReader().use { it.readText() }
        }
    }

    private fun openDownloadConnection(url: String): HttpURLConnection =
        openConnectionFollowingRedirects(url)

    private fun openConnectionFollowingRedirects(initialUrl: String): HttpURLConnection {
        var current = initialUrl
        repeat(6) {
            val connection = (URL(current).openConnection() as HttpURLConnection).apply {
                instanceFollowRedirects = false
                connectTimeout = 15_000
                readTimeout = 30_000
                setRequestProperty("Accept", "application/vnd.github+json, application/octet-stream")
                setRequestProperty("User-Agent", USER_AGENT)
            }
            val code = connection.responseCode
            if (code in 200..299) return connection
            if (code in setOf(301, 302, 303, 307, 308)) {
                val location = connection.getHeaderField("Location")
                    ?: throw IllegalStateException("Update redirect had no destination")
                connection.disconnect()
                current = URL(URL(current), location).toString()
            } else {
                val body = connection.errorStream?.bufferedReader()?.use { it.readText() }.orEmpty()
                connection.disconnect()
                throw IllegalStateException("Update server returned HTTP $code${if (body.isNotBlank()) ": $body" else ""}")
            }
        }
        throw IllegalStateException("Too many redirects while downloading update")
    }

    private fun isNewerVersion(candidate: String, current: String): Boolean {
        val left = candidate.substringBefore('-').split('.').map { it.toIntOrNull() ?: 0 }
        val right = current.substringBefore('-').split('.').map { it.toIntOrNull() ?: 0 }
        val size = maxOf(left.size, right.size)
        repeat(size) { index ->
            val a = left.getOrElse(index) { 0 }
            val b = right.getOrElse(index) { 0 }
            if (a != b) return a > b
        }
        return false
    }
}

private inline fun <T> HttpURLConnection.useConnection(block: (HttpURLConnection) -> T): T =
    try {
        block(this)
    } finally {
        disconnect()
    }
