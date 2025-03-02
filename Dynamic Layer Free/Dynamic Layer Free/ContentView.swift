//
//  ContentView.swift
//  Dynamic Layer Free
//
//  Created by Muhammad Abbas on 18/02/2025.
//

import SwiftUI
import Dynamiclayer

enum HomeTabType: Int, CaseIterable {
    case home = 0
    case templates = 1
    case settings = 2
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .templates: return "Templates"
        case .settings: return "Settings"
        }
    }
    
    var icon: String {
        switch self {
        case .home: return "ic_Home"
        case .templates: return "ic_Templates"
        case .settings: return "ic_Settings"
        }
    }
}

struct ContentView: View {
    
    @State var selectedTab = 0
    
    let tabItems: [DLBottomItem] = [
        DLBottomItem(
            label: "Home",
            icon: "ic_Home"
        ),
        DLBottomItem(
            label: "Templates",
            icon: "ic_Templates"
        ),
        DLBottomItem(
            label: "Settings",
            icon: "ic_Settings"
        )
    ]
    
    var body: some View {
        NavigationStack{
            VStack(spacing: Spacing.p_0.rawValue) {
                if selectedTab == 0 {
                    HomeView()
                } else if selectedTab == 1 {
                    TemplatesView()
                } else {
                    SettingsView()
                }
                
                DLBottomNavigation(
                    items: tabItems,
                    selectedIndex: $selectedTab
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
