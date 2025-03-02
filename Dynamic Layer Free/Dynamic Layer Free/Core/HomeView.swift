//
//  HomeView.swift
//  DynamicLayersExample
//
//  Created by Muhammad Abbas on 06/01/2025.
//

import SwiftUI
import Dynamiclayer

struct WidgetModel {
    let id = UUID().uuidString
    let destinationView: AnyView
    let title: String
}

struct HomeView: View {
    @AppStorage("enable_dark_mode") private var enableDarkMode: Bool = false
    
    let widgets: [WidgetModel] = [
        WidgetModel(
            destinationView: AnyView(DLBottomNavigationComponent()),
            title: "Bottom Navigation"
        ),
        WidgetModel(
            destinationView: AnyView(DLButtonComponent()),
            title: "Button"
        ),
        WidgetModel(
            destinationView: AnyView(DLBadgeNotificationComponent()),
            title: "Badge Notification"
        ),
        WidgetModel(
            destinationView: AnyView(DLButtonDockComponent()),
            title: "Button Dock"
        ),
        WidgetModel(
            destinationView: AnyView(DLCardComponent()),
            title: "Card"
        ),
        WidgetModel(
            destinationView: AnyView(DLButtonIconComponent()),
            title: "Icon Button"
        ),
        WidgetModel(
            destinationView: AnyView(DLInputFieldComponent()),
            title: "Input Field"
        ),
        WidgetModel(
            destinationView: AnyView(DLTopNavigationComponent()),
            title: "Top Navigation"
        ),
    ]
    
    let columns = [
        GridItem(.flexible(), spacing: Spacing.p_16.rawValue),
        GridItem(.flexible(), spacing: Spacing.p_16.rawValue)
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                DLTopNavigation(
                    size: .lg,
                    title: "Home",
                    iconLeft: "",
                    iconRight: "ic_DarkMode"
                ) {
                    /// - Leading icon action
                } iconRightAction: {
                    enableDarkMode.toggle()
                }
                .frame(height: 88)
                
                LazyVGrid(columns: columns, spacing: Spacing.p_16.rawValue) {
                    ForEach(widgets, id: \.id) { widget in
                        NavigationLink {
                            widget.destinationView
                        } label: {
                            DLCard(icon: "ic_CheckCircle", title: widget.title, description: "Component", size: .md, disableGesture: true)
                        }
                    }
                }
                .padding(.horizontal, Spacing.p_16.rawValue)
                .padding(.bottom, Spacing.p_32.rawValue)
                .padding(.top, 1)
            }
        }
    }
}

#Preview {
    HomeView()
}
