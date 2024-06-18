import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Text
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.window.ComposeUIViewController
import io.github.alexzhirkevich.cupertino.theme.CupertinoTheme

fun MainViewController() = ComposeUIViewController {
    println("Is system theme dark? ${isSystemInDarkTheme()}")

    CupertinoTheme {
        Box(
            modifier = Modifier.fillMaxSize(),
            contentAlignment = Alignment.Center
        ) {
            Text("Is system theme dark?: ${isSystemInDarkTheme()}", style = TextStyle(color = Color.DarkGray))
        }
    }
    //App()
}