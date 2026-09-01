package com.jackwilson.worldlife.ui

import android.app.Application
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.jackwilson.worldlife.data.WorldLifeUpdateInfo
import com.jackwilson.worldlife.data.WorldLifeUpdater
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import java.io.File

internal sealed interface UpdateUiState {
    data object Idle : UpdateUiState
    data object Checking : UpdateUiState
    data object Current : UpdateUiState
    data class Available(val info: WorldLifeUpdateInfo) : UpdateUiState
    data class Downloading(val versionName: String, val progress: Int?) : UpdateUiState
    data class PermissionRequired(val versionName: String, val apkPath: String) : UpdateUiState
    data class Error(val message: String) : UpdateUiState
}

internal class UpdateViewModel(application: Application) : AndroidViewModel(application) {
    private val updater = WorldLifeUpdater(application.applicationContext)
    private val _state = MutableStateFlow<UpdateUiState>(UpdateUiState.Idle)
    val state: StateFlow<UpdateUiState> = _state.asStateFlow()

    init {
        checkForUpdate(showCurrentResult = false)
    }

    fun checkForUpdate(showCurrentResult: Boolean = true) {
        if (_state.value is UpdateUiState.Downloading) return
        viewModelScope.launch {
            _state.value = UpdateUiState.Checking
            runCatching { updater.checkForUpdate() }
                .onSuccess { info ->
                    _state.value = when {
                        info != null -> UpdateUiState.Available(info)
                        showCurrentResult -> UpdateUiState.Current
                        else -> UpdateUiState.Idle
                    }
                }
                .onFailure { error ->
                    if (showCurrentResult) {
                        _state.value = UpdateUiState.Error(error.message ?: "Could not check for updates")
                    } else {
                        _state.value = UpdateUiState.Idle
                    }
                }
        }
    }

    fun downloadAndInstall() {
        val info = (_state.value as? UpdateUiState.Available)?.info ?: return
        viewModelScope.launch {
            _state.value = UpdateUiState.Downloading(info.versionName, 0)
            runCatching {
                updater.downloadUpdate(info) { progress ->
                    _state.value = UpdateUiState.Downloading(info.versionName, progress)
                }
            }.onSuccess { apk ->
                continueInstall(info.versionName, apk)
            }.onFailure { error ->
                _state.value = UpdateUiState.Error(error.message ?: "Update download failed")
            }
        }
    }

    fun requestInstallPermission() {
        val state = _state.value as? UpdateUiState.PermissionRequired ?: return
        updater.openInstallPermissionSettings()
        _state.value = state
    }

    fun onAppResumed() {
        val state = _state.value as? UpdateUiState.PermissionRequired ?: return
        if (updater.canRequestInstalls()) {
            val apk = File(state.apkPath)
            if (apk.isFile) {
                updater.launchInstaller(apk)
                _state.value = UpdateUiState.Idle
            } else {
                _state.value = UpdateUiState.Error("Downloaded update is no longer available")
            }
        }
    }

    fun dismiss() {
        if (_state.value !is UpdateUiState.Downloading) {
            _state.value = UpdateUiState.Idle
        }
    }

    private fun continueInstall(versionName: String, apk: File) {
        if (updater.canRequestInstalls()) {
            updater.launchInstaller(apk)
            _state.value = UpdateUiState.Idle
        } else {
            _state.value = UpdateUiState.PermissionRequired(versionName, apk.absolutePath)
        }
    }
}
