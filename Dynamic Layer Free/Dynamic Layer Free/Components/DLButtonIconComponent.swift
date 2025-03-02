//
//  DLButtonIconComponent.swift
//  CraftKitExample
//
//  Created by DynamicLayers on 09/11/2023.
//

import SwiftUI
import Dynamiclayer

struct DLButtonIconComponent: View {
    @AppStorage("enable_dark_mode") private var enableDarkMode: Bool = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: Spacing.p_0.rawValue) {
            DLTopNavigation(
                size: .md,
                title: "Icon Button",
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
                    VStack(alignment: .leading, spacing: Spacing.p_32.rawValue) {
                        VStack(alignment: .leading, spacing: Spacing.p_8.rawValue) {
                            Text("Type")
                                .font(.customFont(size: .text_lg, weight: .semibold))
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.")
                                .font(.customFont(size: .text_sm, weight: .regular))
                                .foregroundStyle(Color.grey500)
                        }
                        
                        HStack(spacing: Spacing.p_16.rawValue) {
                            DLButtonIcon(
                                type: .primary,
                                size: .lg,
                                icon: "ic_PlaceholderWhite"
                            )
                            
                            DLButtonIcon(
                                type: .primary,
                                size: .md,
                                icon: "ic_PlaceholderWhite"
                            )
                            
                            DLButtonIcon(
                                type: .primary,
                                size: .sm,
                                icon: "ic_PlaceholderWhite"
                            )
                            
                            DLButtonIcon(
                                type: .primary,
                                size: .xs,
                                icon: "ic_PlaceholderWhite"
                            )
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
                        
                        HStack(spacing: Spacing.p_16.rawValue) {
                            DLButtonIcon(
                                type: .primary,
                                size: .lg,
                                icon: "ic_PlaceholderWhite",
                                disable: true
                            )
                            
                            DLButtonIcon(
                                type: .primary,
                                size: .md,
                                icon: "ic_PlaceholderWhite",
                                disable: true
                            )
                            
                            DLButtonIcon(
                                type: .primary,
                                size: .sm,
                                icon: "ic_PlaceholderWhite",
                                disable: true
                            )
                            
                            DLButtonIcon(
                                type: .primary,
                                size: .xs,
                                icon: "ic_PlaceholderWhite",
                                disable: true
                            )
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
                        
                        HStack(spacing: Spacing.p_16.rawValue) {
                            DLButtonIcon(
                                type: .secondary,
                                size: .lg,
                                icon: "ic_PlaceholderWhite"
                            )
                            
                            DLButtonIcon(
                                type: .secondary,
                                size: .md,
                                icon: "ic_PlaceholderWhite"
                            )
                            
                            DLButtonIcon(
                                type: .secondary,
                                size: .sm,
                                icon: "ic_PlaceholderWhite"
                            )
                            
                            DLButtonIcon(
                                type: .secondary,
                                size: .xs,
                                icon: "ic_PlaceholderWhite"
                            )
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
                        
                        HStack(spacing: Spacing.p_16.rawValue) {
                            DLButtonIcon(
                                type: .secondary,
                                size: .lg,
                                icon: "ic_PlaceholderWhite",
                                disable: true
                            )
                            
                            DLButtonIcon(
                                type: .secondary,
                                size: .md,
                                icon: "ic_PlaceholderWhite",
                                disable: true
                            )
                            
                            DLButtonIcon(
                                type: .secondary,
                                size: .sm,
                                icon: "ic_PlaceholderWhite",
                                disable: true
                            )
                            
                            DLButtonIcon(
                                type: .secondary,
                                size: .xs,
                                icon: "ic_PlaceholderWhite",
                                disable: true
                            )
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
                        
                        HStack(spacing: Spacing.p_16.rawValue) {
                            DLButtonIcon(
                                type: .tertiary,
                                size: .lg,
                                icon: "ic_PlaceholderWhite"
                            )
                            
                            DLButtonIcon(
                                type: .tertiary,
                                size: .md,
                                icon: "ic_PlaceholderWhite"
                            )
                            
                            DLButtonIcon(
                                type: .tertiary,
                                size: .sm,
                                icon: "ic_PlaceholderWhite"
                            )
                            
                            DLButtonIcon(
                                type: .tertiary,
                                size: .xs,
                                icon: "ic_PlaceholderWhite"
                            )
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
                        
                        HStack(spacing: Spacing.p_16.rawValue) {
                            DLButtonIcon(
                                type: .tertiary,
                                size: .lg,
                                icon: "ic_PlaceholderWhite",
                                disable: true
                            )

                            DLButtonIcon(
                                type: .tertiary,
                                size: .md,
                                icon: "ic_PlaceholderWhite",
                                disable: true
                            )

                            DLButtonIcon(
                                type: .tertiary,
                                size: .sm,
                                icon: "ic_PlaceholderWhite",
                                disable: true
                            )

                            DLButtonIcon(
                                type: .tertiary,
                                size: .xs,
                                icon: "ic_PlaceholderWhite",
                                disable: true
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

struct DLIconButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        DLButtonIconComponent()
    }
}
