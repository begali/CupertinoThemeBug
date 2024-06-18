import UIKit
import SwiftUI
import ComposeApp

//When returning UINavigationController from makeUIViewController dosn't work
struct ComposeView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UINavigationController {
        let rootController = MainViewControllerKt.MainViewController()
        let navController = UINavigationController(rootViewController: rootController)
        navController.setNavigationBarHidden(true, animated: false)
        
        return navController
    }

    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {}
}


//When returning UIViewController from makeUIViewController works
//struct ComposeView: UIViewControllerRepresentable {
//    func makeUIViewController(context: Context) -> UIViewController {
//        return MainViewControllerKt.MainViewController()
//    }
//
//    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
//}

struct ContentView: View {
    var body: some View {
        ComposeView()
                .ignoresSafeArea(.keyboard) // Compose has own keyboard handler
    }
}



