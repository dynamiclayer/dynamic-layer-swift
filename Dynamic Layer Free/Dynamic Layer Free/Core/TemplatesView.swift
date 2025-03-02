//
//  TemplatesView.swift
//  DynamicLayersExample
//
//  Created by Muhammad Abbas on 06/01/2025.
//

import SwiftUI
import Dynamiclayer

struct TemplatesView: View {
    @AppStorage("enable_dark_mode") private var enableDarkMode: Bool = false
    
    let widgets: [WidgetModel] = [
        WidgetModel(
            destinationView: AnyView(EmptyView()),
            title: "Log in"
        ),
        WidgetModel(
            destinationView: AnyView(EmptyView()),
            title: "Sign up"
        ),
        WidgetModel(
            destinationView: AnyView(EmptyView()),
            title: "Forget password"
        )
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
                    title: "Templates",
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
                        DLCard(icon: "ic_Lock", title: widget.title, description: "Template", size: .md, disableGesture: true)
                    }
                }
                .padding(.horizontal, Spacing.p_16.rawValue)
                .padding(.bottom, Spacing.p_32.rawValue)
            }
        }
    }
}

#Preview {
    TemplatesView()
}
