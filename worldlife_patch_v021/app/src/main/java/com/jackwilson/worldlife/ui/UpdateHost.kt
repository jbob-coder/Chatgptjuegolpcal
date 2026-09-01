package com.jackwilson.worldlife.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.LifecycleResumeEffect
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import com.jackwilson.worldlife.ui.theme.WorldLifeTheme

@Composable
internal fun WorldLifeUpdateHost(viewModel: UpdateViewModel) {
    val state by viewModel.state.collectAsStateWithLifecycle()

    LifecycleResumeEffect(Unit) {
        viewModel.onAppResumed()
        onPauseOrDispose { }
    }

    WorldLifeTheme {
        when (val current = state) {
            UpdateUiState.Idle,
            UpdateUiState.Checking,
            UpdateUiState.Current -> Unit

            is UpdateUiState.Available -> AlertDialog(
                onDismissRequest = viewModel::dismiss,
                title = { Text("WorldLife ${current.info.versionName} is ready") },
                text = {
                    Text(
                        "WorldLife can download the update itself. Android will still show its normal install/update confirmation.",
                    )
                },
                confirmButton = {
                    TextButton(onClick = viewModel::downloadAndInstall) { Text("Update now") }
                },
                dismissButton = {
                    TextButton(onClick = viewModel::dismiss) { Text("Later") }
                },
            )

            is UpdateUiState.Downloading -> AlertDialog(
                onDismissRequest = { },
                title = { Text("Downloading ${current.versionName}") },
                text = {
                    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                        if (current.progress != null) {
                            LinearProgressIndicator(
                                progress = { current.progress / 100f },
                                modifier = Modifier.fillMaxWidth(),
                            )
                            Text("${current.progress}%", style = MaterialTheme.typography.bodyMedium)
                        } else {
                            LinearProgressIndicator(modifier = Modifier.fillMaxWidth())
                        }
                        Text(
                            "The APK is SHA-256 verified before Android is asked to install it.",
                            style = MaterialTheme.typography.bodySmall,
                        )
                    }
                },
                confirmButton = { },
            )

            is UpdateUiState.PermissionRequired -> AlertDialog(
                onDismissRequest = viewModel::dismiss,
                title = { Text("One-time Android permission") },
                text = {
                    Text(
                        "Enable ‘Allow from this source’ for WorldLife. Return to the app and the update installer will continue.",
                    )
                },
                confirmButton = {
                    TextButton(onClick = viewModel::requestInstallPermission) { Text("Open settings") }
                },
                dismissButton = {
                    TextButton(onClick = viewModel::dismiss) { Text("Later") }
                },
            )

            is UpdateUiState.Error -> AlertDialog(
                onDismissRequest = viewModel::dismiss,
                title = { Text("Update problem") },
                text = { Text(current.message) },
                confirmButton = {
                    TextButton(onClick = viewModel::dismiss) { Text("OK") }
                },
            )
        }
    }
}
