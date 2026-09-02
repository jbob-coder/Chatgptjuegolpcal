package com.jackwilson.worldlife

import android.content.Context
import android.os.Build
import java.io.PrintWriter
import java.io.StringWriter
import kotlin.system.exitProcess

internal object CrashDiagnostics {
    private const val PREFS = "worldlife_crash_diagnostics"
    private const val KEY_PENDING_REPORT = "pending_report"
    private const val MAX_REPORT_CHARS = 60_000

    fun install(context: Context) {
        val appContext = context.applicationContext
        val previous = Thread.getDefaultUncaughtExceptionHandler()

        Thread.setDefaultUncaughtExceptionHandler { thread, throwable ->
            runCatching {
                persist(appContext, thread, throwable)
            }

            if (previous != null) {
                previous.uncaughtException(thread, throwable)
            } else {
                android.os.Process.killProcess(android.os.Process.myPid())
                exitProcess(10)
            }
        }
    }

    fun pendingReport(context: Context): String? =
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .getString(KEY_PENDING_REPORT, null)
            ?.takeIf { it.isNotBlank() }

    fun clear(context: Context) {
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .edit()
            .remove(KEY_PENDING_REPORT)
            .apply()
    }

    private fun persist(context: Context, thread: Thread, throwable: Throwable) {
        val writer = StringWriter()
        throwable.printStackTrace(PrintWriter(writer))

        val report = buildString {
            appendLine("WorldLife RPG crash diagnostic")
            appendLine("version=${BuildConfig.VERSION_NAME} (${BuildConfig.VERSION_CODE})")
            appendLine("package=${BuildConfig.APPLICATION_ID}")
            appendLine("timestamp_ms=${System.currentTimeMillis()}")
            appendLine("thread=${thread.name}")
            appendLine("device=${Build.MANUFACTURER} ${Build.MODEL}")
            appendLine("android_sdk=${Build.VERSION.SDK_INT}")
            appendLine("android_release=${Build.VERSION.RELEASE}")
            appendLine()
            append(writer.toString())
        }.take(MAX_REPORT_CHARS)

        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .edit()
            .putString(KEY_PENDING_REPORT, report)
            .commit()
    }
}
