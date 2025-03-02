//
//  DLBottomNavigationComponent.swift
//  CraftKitExample
//
//  Created by DynamicLayers on 10/11/2023.
//

import SwiftUI
import Dynamiclayer

struct DLBottomNavigationComponent: View {
    @AppStorage("enable_dark_mode") private var enableDarkMode: Bool = false
    @Environment(\.dismiss) var dismiss
    
    @State var selectedIndex1 = 0
    let items1: [DLBottomItem] = [
        DLBottomItem(
            label: "Label",
            icon: "ic_PlaceholderWhite",
            badgeSize: .sm
        ),
        DLBottomItem(
            label: "Label",
            icon: "ic_PlaceholderWhite",
            badgeSize: .md(text: "5")
        )
    ]
    
    @State var selectedIndex2 = 0
    let items2: [DLBottomItem] = [
        DLBottomItem(
            label: "Label",
            icon: "ic_PlaceholderWhite"
        ),
        DLBottomItem(
            label: "Label",
            icon: "ic_PlaceholderWhite",
            badgeSize: .md(text: "5")
        ),
        DLBottomItem(
            label: "Label",
            icon: "ic_PlaceholderWhite",
            badgeSize: .md(text: "50")
        )
    ]
    
    @State var selectedIndex3 = 0
    let items3: [DLBottomItem] = [
        DLBottomItem(
            label: "Label",
            icon: "ic_PlaceholderWhite"
        ),
        DLBottomItem(
            label: "Label",
            icon: "ic_PlaceholderWhite",
            badgeSize: .sm
        ),
        DLBottomItem(
            label: "Label",
            icon: "ic_PlaceholderWhite"
        ),
        DLBottomItem(
            label: "Label",
            icon: "ic_PlaceholderWhite"
        )
    ]
    
    @State var selectedIndex4 = 0
    let items4: [DLBottomItem] = [
        DLBottomItem(
            label: "Label",
            icon: "ic_PlaceholderWhite"),
        DLBottomItem(
            label: "Label",
            icon: "ic_PlaceholderWhite"
        ),
        DLBottomItem(
            label: "Label",
            icon: "ic_PlaceholderWhite",
            badgeSize: .sm
        ),
        DLBottomItem(
            label: "Label",
            icon: "ic_PlaceholderWhite"
        ),
        DLBottomItem(
            label: "Label",
            icon: "ic_PlaceholderWhite"
        )
    ]
    
    var body: some View {
        VStack(spacing: Spacing.p_0.rawValue) {
            DLTopNavigation(
                size: .md,
                title: "Bottom Navigation",
                iconLeft: "ic_ChevronLeft",
                iconRight: "ic_DarkMode"
            ) {
                /// - Leading icon action
                dismiss()
            } iconRightAction: {
                enableDarkMode.toggle()
            }
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: Spacing.p_32.rawValue) {
                    
                    VStack(spacing: Spacing.p_32.rawValue) {
                        VStack(alignment: .leading, spacing: Spacing.p_8.rawValue) {
                            Text("Type")
                                .font(.customFont(size: .text_lg, weight: .semibold))
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.")
                                .font(.customFont(size: .text_sm, weight: .regular))
                                .foregroundStyle(Color.grey500)
                        }
                        
                        DLBottomNavigation(
                            items: items1,
                            selectedIndex: $selectedIndex1
                        )
                    }
                    
                    VStack(spacing: Spacing.p_32.rawValue) {
                        VStack(alignment: .leading, spacing: Spacing.p_8.rawValue) {
                            Text("Type")
                                .font(.customFont(size: .text_lg, weight: .semibold))
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.")
                                .font(.customFont(size: .text_sm, weight: .regular))
                                .foregroundStyle(Color.grey500)
                        }
                        
                        DLBottomNavigation(
                            items: items2,
                            selectedIndex: $selectedIndex2
                        )
                    }
                    
                    VStack(spacing: Spacing.p_32.rawValue) {
                        VStack(alignment: .leading, spacing: Spacing.p_8.rawValue) {
                            Text("Type")
                                .font(.customFont(size: .text_lg, weight: .semibold))
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.")
                                .font(.customFont(size: .text_sm, weight: .regular))
                                .foregroundStyle(Color.grey500)
                        }
                        
                        DLBottomNavigation(
                            items: items3,
                            selectedIndex: $selectedIndex3
                        )
                    }
                    
                    VStack(spacing: Spacing.p_32.rawValue) {
                        VStack(alignment: .leading, spacing: Spacing.p_8.rawValue) {
                            Text("Type")
                                .font(.customFont(size: .text_lg, weight: .semibold))
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.")
                                .font(.customFont(size: .text_sm, weight: .regular))
                                .foregroundStyle(Color.grey500)
                        }
                        
                        DLBottomNavigation(
                            items: items4,
                            selectedIndex: $selectedIndex4
                        )
                    }
                }
                .padding(.vertical, Spacing.p_32.rawValue)
                .padding(.horizontal, Spacing.p_16.rawValue)
            }
        }
        .toolbar(.hidden)
    }
}

struct DLBottomNavigationComponent_Previews: PreviewProvider {
    static var previews: some View {
        DLBottomNavigationComponent()
    }
}
