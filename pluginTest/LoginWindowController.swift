import Cocoa
import SwiftUI

class LoginWindowController: NSWindowController {
    override init(window: NSWindow?) {
        let loginView = ContentView()
        let hostingController = NSHostingController(rootView: loginView)

        let window = NSWindow(
            contentRect: NSScreen.main!.frame,
            styleMask: [.borderless],
            backing: .buffered,
            defer: false
        )

        window.contentViewController = hostingController
        window.level = .screenSaver // En üst katmanda göster
        window.makeKeyAndOrderFront(nil)
        window.isOpaque = true
        window.collectionBehavior = [.canJoinAllSpaces, .fullScreenPrimary]

        super.init(window: window)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
