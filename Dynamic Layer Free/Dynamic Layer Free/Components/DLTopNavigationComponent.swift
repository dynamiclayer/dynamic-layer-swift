//
//  DLTopNavigationComponent.swift
//  CraftKitExample
//
//  Created by DynamicLayers on 15/11/2023.
//

import SwiftUI
import Dynamiclayer

struct DLTopNavigationComponent: View {
    @AppStorage("enable_dark_mode") private var enableDarkMode: Bool = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: Spacing.p_0.rawValue) {
            DLTopNavigation(
                size: .md,
                title: "Top Navigation",
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
                        
                        DLTopNavigation(
                            size: .md,
                            title: "Title",
                            iconLeft: "ic_IconPlaceholder",
                            iconRight: "ic_IconPlaceholder",
                            iconLeftAction: {
                                /// - Left Button Action
                            }, iconRightAction: {
                                /// - Right Button Action
                            }
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
                        
                        DLTopNavigation(
                            size: .lg,
                            title: "Title",
                            iconLeft: "ic_IconPlaceholder",
                            iconRight: "ic_IconPlaceholder",
                            iconLeftAction: {
                                /// - Left Button Action
                            }, iconRightAction: {
                                /// - Right Button Action
                            }
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

struct DLTopNavigationComponent_Previews: PreviewProvider {
    static var previews: some View {
        DLTopNavigationComponent()
    }
}
