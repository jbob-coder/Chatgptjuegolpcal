package com.jackwilson.worldlife

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.lifecycle.viewmodel.compose.viewModel
import com.jackwilson.worldlife.data.AndroidGameRepository
import com.jackwilson.worldlife.data.worldLifeDataStore
import com.jackwilson.worldlife.ui.GameViewModel
import com.jackwilson.worldlife.ui.UpdateViewModel
import com.jackwilson.worldlife.ui.WorldLifeRoot
import com.jackwilson.worldlife.ui.WorldLifeUpdateHost

class MainActivity : ComponentActivity() {
    private val repository by lazy {
        AndroidGameRepository(applicationContext.worldLifeDataStore)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            val gameViewModel: GameViewModel = viewModel(factory = GameViewModel.factory(repository))
            val updateViewModel: UpdateViewModel = viewModel()
            WorldLifeRoot(gameViewModel)
            WorldLifeUpdateHost(updateViewModel)
        }
    }
}
