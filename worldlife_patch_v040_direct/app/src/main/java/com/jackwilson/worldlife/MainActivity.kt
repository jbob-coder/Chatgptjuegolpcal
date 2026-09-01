package com.jackwilson.worldlife

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.WindowInsetsControllerCompat
import androidx.lifecycle.viewmodel.compose.viewModel
import com.jackwilson.worldlife.data.AndroidGameRepository
import com.jackwilson.worldlife.data.worldLifeDataStore
import com.jackwilson.worldlife.ui.GameViewModel
import com.jackwilson.worldlife.ui.UpdateViewModel
import com.jackwilson.worldlife.ui.WorldLifeRoot

class MainActivity : ComponentActivity() {
    private val repository by lazy {
        AndroidGameRepository(applicationContext.worldLifeDataStore)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        enterImmersiveMode()
        setContent {
            val gameViewModel: GameViewModel = viewModel(factory = GameViewModel.factory(repository))
            val updateViewModel: UpdateViewModel = viewModel()
            WorldLifeRoot(gameViewModel, updateViewModel)
        }
    }

    override fun onWindowFocusChanged(hasFocus: Boolean) {
        super.onWindowFocusChanged(hasFocus)
        if (hasFocus) enterImmersiveMode()
    }

    private fun enterImmersiveMode() {
        WindowCompat.setDecorFitsSystemWindows(window, false)
        WindowCompat.getInsetsController(window, window.decorView).apply {
            hide(WindowInsetsCompat.Type.systemBars())
            systemBarsBehavior = WindowInsetsControllerCompat.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
        }
    }
}
