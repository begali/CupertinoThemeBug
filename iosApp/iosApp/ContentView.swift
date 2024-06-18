import UIKit
import SwiftUI
import ComposeApp

struct ComposeView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UINavigationController {
        let rootController = MainViewControllerKt.MainViewController()
        let navController = UINavigationController(rootViewController: rootController)
        navController.setNavigationBarHidden(true, animated: false)
        
        return navController
    }

    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {}
}

struct ContentView: View {
    var body: some View {
        ComposeView()
                .ignoresSafeArea(.keyboard) // Compose has own keyboard handler
    }
}



