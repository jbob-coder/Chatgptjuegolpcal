package com.jackwilson.worldlife

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.os.Bundle
import android.view.ViewGroup
import android.widget.Button
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import android.widget.Toast
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

        val pendingCrash = CrashDiagnostics.pendingReport(this)
        if (pendingCrash != null) {
            showCrashRecoveryScreen(pendingCrash)
        } else {
            launchGameUi()
        }
    }

    override fun onWindowFocusChanged(hasFocus: Boolean) {
        super.onWindowFocusChanged(hasFocus)
        if (hasFocus) enterImmersiveMode()
    }

    private fun launchGameUi() {
        setContent {
            val gameViewModel: GameViewModel = viewModel(factory = GameViewModel.factory(repository))
            val updateViewModel: UpdateViewModel = viewModel()
            WorldLifeRoot(gameViewModel, updateViewModel)
        }
    }

    private fun showCrashRecoveryScreen(report: String) {
        val density = resources.displayMetrics.density
        fun dp(value: Int): Int = (value * density).toInt()

        val content = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(24), dp(24), dp(24), dp(24))
        }

        content.addView(TextView(this).apply {
            text = "WorldLife crash diagnostic"
            textSize = 24f
        })
        content.addView(TextView(this).apply {
            text = "WorldLife recorded the previous uncaught crash. Copy this diagnostic and send it before continuing. This screen does not clear your save."
            textSize = 16f
            setPadding(0, dp(12), 0, dp(12))
        })
        content.addView(TextView(this).apply {
            text = report
            textSize = 12f
            setTextIsSelectable(true)
        }, LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            0,
            1f,
        ))
        content.addView(Button(this).apply {
            text = "Copy diagnostic"
            setOnClickListener {
                val clipboard = getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
                clipboard.setPrimaryClip(ClipData.newPlainText("WorldLife crash diagnostic", report))
                Toast.makeText(this@MainActivity, "Diagnostic copied. Paste it into ChatGPT.", Toast.LENGTH_LONG).show()
            }
        })
        content.addView(Button(this).apply {
            text = "Clear diagnostic and try WorldLife"
            setOnClickListener {
                CrashDiagnostics.clear(this@MainActivity)
                launchGameUi()
            }
        })

        setContentView(ScrollView(this).apply {
            addView(content, ScrollView.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT,
            ))
        })
    }

    private fun enterImmersiveMode() {
        WindowCompat.setDecorFitsSystemWindows(window, false)
        WindowCompat.getInsetsController(window, window.decorView).apply {
            hide(WindowInsetsCompat.Type.systemBars())
            systemBarsBehavior = WindowInsetsControllerCompat.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
        }
    }
}
