//
//  DLButtonDockComponent.swift
//  DynamicLayersExample
//
//  Created by Muhammad Abbas on 11/01/2025.
//

import SwiftUI
import Dynamiclayer

struct DLButtonDockComponent: View {
    @AppStorage("enable_dark_mode") private var enableDarkMode: Bool = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: Spacing.p_0.rawValue) {
            DLTopNavigation(
                size: .md,
                title: "Button Dock",
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
                        .padding(.horizontal, Spacing.p_16.rawValue)
                        
                        DLButtonDock(type: .singleButton(title: "Save"), secondButtonAction:  {
                            /// - Save Action
                        })
                    }
                    
                    
                    VStack(spacing: Spacing.p_32.rawValue) {
                        VStack(alignment: .leading, spacing: Spacing.p_8.rawValue) {
                            Text("Type")
                                .font(.customFont(size: .text_lg, weight: .semibold))
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.")
                                .font(.customFont(size: .text_sm, weight: .regular))
                                .foregroundStyle(Color.grey500)
                        }
                        .padding(.horizontal, Spacing.p_16.rawValue)
                        
                        DLButtonDock(type: .doubleHorizontalButtons(firstButtonTitle: "Cancel", secondButtonTitle: "Save")) {
                            /// - Cancel Action
                        } secondButtonAction: {
                            /// - Save Action
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: Spacing.p_32.rawValue) {
                        VStack(alignment: .leading, spacing: Spacing.p_8.rawValue) {
                            Text("Type")
                                .font(.customFont(size: .text_lg, weight: .semibold))
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.")
                                .font(.customFont(size: .text_sm, weight: .regular))
                                .foregroundStyle(Color.grey500)
                        }
                        .padding(.horizontal, Spacing.p_16.rawValue)
                        
                        DLButtonDock(type: .doubleVerticalButtons(firstButtonTitle: "Cancel", secondButtonTitle: "Save")) {
                            /// - Save Action
                        } secondButtonAction: {
                            /// - Cancel Action
                        }
                    }
                }
                .padding(.vertical, Spacing.p_32.rawValue)
            }
        }
        .toolbar(.hidden)
    }
}

#Preview {
    DLButtonDockComponent()
}
