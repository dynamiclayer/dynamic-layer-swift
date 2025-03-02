//
//  DLCardComponent.swift
//  CraftKitExample
//
//  Created by DynamicLayers on 10/11/2023.
//

import SwiftUI
import Dynamiclayer

struct DLCardComponent: View {
    @AppStorage("enable_dark_mode") private var enableDarkMode: Bool = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: Spacing.p_0.rawValue) {
            DLTopNavigation(
                size: .md,
                title: "Card",
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
                        
                        HStack(spacing: Spacing.p_16.rawValue) {
                            DLCard(
                                icon: "ic_PlaceholderWhite",
                                title: "Title",
                                description: "Description",
                                size: .lg,
                                state: .normal
                            )
                            
                            DLCard(
                                icon: "ic_PlaceholderWhite",
                                title: "Title", description:
                                    "Description",
                                size: .lg,
                                state: .disabled
                            )
                        }
                    }
                    
                    VStack(spacing: Spacing.p_32.rawValue) {
                        VStack(alignment: .leading, spacing: Spacing.p_8.rawValue) {
                            Text("Type")
                                .font(.customFont(size: .text_lg, weight: .semibold))
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.")
                                .font(.customFont(size: .text_sm, weight: .regular))
                                .foregroundStyle(Color.grey500)
                        }
                        
                        HStack(spacing: Spacing.p_16.rawValue) {
                            DLCard(
                                icon: "ic_PlaceholderWhite",
                                title: "Title",
                                description: "Description",
                                size: .md,
                                state: .normal
                            )
                            
                            DLCard(
                                icon: "ic_PlaceholderWhite",
                                title: "Title",
                                description: "Description Description Description",
                                size: .md,
                                state: .disabled
                            )
                        }
                    }
                    
                }
                .padding(.vertical, Spacing.p_32.rawValue)
                .padding(.horizontal, Spacing.p_16.rawValue)
            }
        }
        .toolbar(.hidden)
    }
}

struct DLCardComponent_Previews: PreviewProvider {
    static var previews: some View {
        DLCardComponent()
    }
}
