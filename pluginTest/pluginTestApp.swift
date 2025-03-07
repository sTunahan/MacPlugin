//
//  pluginTestApp.swift
//  pluginTest
//
//  Created by Securify on 17.02.2025.
//

import SwiftUI

@main
struct pluginTestApp: App {
    var body: some Scene {
            WindowGroup {
                ContentView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .windowStyle(HiddenTitleBarWindowStyle()) // Pencere çerçevesini gizle
        }
}
