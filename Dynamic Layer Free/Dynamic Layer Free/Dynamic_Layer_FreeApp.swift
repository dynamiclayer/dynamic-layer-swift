//
//  Dynamic_Layer_FreeApp.swift
//  Dynamic Layer Free
//
//  Created by Muhammad Abbas on 18/02/2025.
//

import SwiftUI

@main
struct Dynamic_Layer_FreeApp: App {
    @AppStorage("enable_dark_mode") private var enableDarkMode: Bool = false
    
    var appearanceSwitch: ColorScheme? {
        return enableDarkMode ? .dark : .light
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(appearanceSwitch)
        }
    }
}
