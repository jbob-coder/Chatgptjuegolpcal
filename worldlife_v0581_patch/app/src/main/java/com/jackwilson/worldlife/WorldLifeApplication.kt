package com.jackwilson.worldlife

import android.app.Application

class WorldLifeApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        CrashDiagnostics.install(this)
    }
}
