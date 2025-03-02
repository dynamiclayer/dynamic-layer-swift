//
//  DLButtonComponent.swift
//  CraftKitExample
//
//  Created by DynamicLayers on 09/11/2023.
//

import SwiftUI
import Dynamiclayer

struct DLButtonComponent: View {
    @AppStorage("enable_dark_mode") private var enableDarkMode: Bool = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: Spacing.p_0.rawValue) {
            DLTopNavigation(
                size: .md,
                title: "Button",
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
                        
                        VStack(alignment: .leading, spacing: Spacing.p_16.rawValue) {
                            DLButton(
                                size: .lg,
                                type: .primary,
                                label: "Primary Button XL",
                                icon: ("ic_PlaceholderWhite", "ic_PlaceholderWhite")
                            )
                            
                            DLButton(
                                size: .md,
                                type: .primary,
                                label: "Primary Button L"
                            )
                            
                            DLButton(
                                size: .sm,
                                type: .primary,
                                label: "Primary Button M",
                                icon: ("ic_PlaceholderWhite", "ic_PlaceholderWhite")
                            )
                            
                            DLButton(
                                size: .xs,
                                type: .primary,
                                label: "Primary Button S"
                            )
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    VStack(spacing: Spacing.p_32.rawValue) {
                        VStack(alignment: .leading, spacing: Spacing.p_8.rawValue) {
                            Text("Type")
                                .font(.customFont(size: .text_lg, weight: .semibold))
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.")
                                .font(.customFont(size: .text_sm, weight: .regular))
                                .foregroundStyle(Color.grey500)
                        }
                        
                        VStack(alignment: .leading, spacing: Spacing.p_16.rawValue) {
                            DLButton(
                                size: .lg,
                                type: .primary,
                                label: "Primary Button XL",
                                icon: ("ic_PlaceholderWhite", "ic_PlaceholderWhite"),
                                disable: true
                            )
                            
                            DLButton(
                                size: .md,
                                type: .primary,
                                label: "Primary Button L",
                                icon: ("ic_PlaceholderWhite", "ic_PlaceholderWhite"),
                                disable: true
                            )
                            
                            DLButton(
                                size: .sm,
                                type: .primary,
                                label: "Primary Button M",
                                icon: ("ic_PlaceholderWhite", "ic_PlaceholderWhite"),
                                disable: true
                            )
                            
                            DLButton(
                                size: .xs,
                                type: .primary,
                                label: "Primary Button S",
                                icon: ("ic_PlaceholderWhite", "ic_PlaceholderWhite"),
                                disable: true
                            )
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    VStack(spacing: Spacing.p_32.rawValue) {
                        VStack(alignment: .leading, spacing: Spacing.p_8.rawValue) {
                            Text("Type")
                                .font(.customFont(size: .text_lg, weight: .semibold))
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.")
                                .font(.customFont(size: .text_sm, weight: .regular))
                                .foregroundStyle(Color.grey500)
                        }
                        
                        VStack(alignment: .leading, spacing: Spacing.p_16.rawValue) {
                            DLButton(
                                size: .lg,
                                type: .secondary,
                                label: "Primary Button XL"
                            )
                            
                            DLButton(
                                size: .md,
                                type: .secondary,
                                label: "Primary Button L"
                            )
                            
                            DLButton(
                                size: .sm,
                                type: .secondary,
                                label: "Primary Button M"
                            )
                            
                            DLButton(
                                size: .xs,
                                type: .secondary,
                                label: "Primary Button S"
                            )
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    VStack(spacing: Spacing.p_32.rawValue) {
                        VStack(alignment: .leading, spacing: Spacing.p_8.rawValue) {
                            Text("Type")
                                .font(.customFont(size: .text_lg, weight: .semibold))
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.")
                                .font(.customFont(size: .text_sm, weight: .regular))
                                .foregroundStyle(Color.grey500)
                        }
                        
                        VStack(alignment: .leading, spacing: Spacing.p_16.rawValue) {
                            DLButton(
                                size: .lg,
                                type: .secondary,
                                label: "Primary Button XL",
                                disable: true
                            )
                            
                            DLButton(
                                size: .md,
                                type: .secondary,
                                label: "Primary Button L",
                                disable: true
                            )
                            
                            DLButton(
                                size: .sm,
                                type: .secondary,
                                label: "Primary Button M",
                                disable: true
                            )
                            
                            DLButton(
                                size: .xs,
                                type: .secondary,
                                label: "Primary Button S",
                                disable: true
                            )
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    VStack(spacing: Spacing.p_32.rawValue) {
                        VStack(alignment: .leading, spacing: Spacing.p_8.rawValue) {
                            Text("Type")
                                .font(.customFont(size: .text_lg, weight: .semibold))
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.")
                                .font(.customFont(size: .text_sm, weight: .regular))
                                .foregroundStyle(Color.grey500)
                        }
                        
                        VStack(alignment: .leading, spacing: Spacing.p_16.rawValue) {
                            DLButton(
                                size: .lg,
                                type: .tertiary,
                                label: "Primary Button XL",
                                icon: ("ic_PlaceholderBlack", "ic_PlaceholderBlack")
                            )
                            
                            DLButton(
                                size: .md,
                                type: .tertiary,
                                label: "Primary Button L",
                                icon: ("", "ic_PlaceholderBlack")
                            )
                            
                            DLButton(
                                size: .sm,
                                type: .tertiary,
                                label: "Primary Button M",
                                icon: ("ic_PlaceholderBlack", "ic_PlaceholderBlack")
                            )
                            
                            DLButton(
                                size: .xs,
                                type: .tertiary,
                                label: "Primary Button S",
                                icon: ("ic_PlaceholderBlack", "")
                            )
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    VStack(spacing: Spacing.p_32.rawValue) {
                        VStack(alignment: .leading, spacing: Spacing.p_8.rawValue) {
                            Text("Type")
                                .font(.customFont(size: .text_lg, weight: .semibold))
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.")
                                .font(.customFont(size: .text_sm, weight: .regular))
                                .foregroundStyle(Color.grey500)
                        }
                        
                        VStack(alignment: .leading, spacing: Spacing.p_16.rawValue) {
                            DLButton(
                                size: .lg,
                                type: .tertiary,
                                label: "Primary Button XL",
                                disable: true
                            )
                            
                            DLButton(
                                size: .md,
                                type: .tertiary,
                                label: "Primary Button L",
                                disable: true
                            )
                            
                            DLButton(
                                size: .sm,
                                type: .tertiary,
                                label: "Primary Button M",
                                disable: true
                            )
                            
                            DLButton(
                                size: .xs,
                                type: .tertiary,
                                label: "Primary Button S",
                                disable: true
                            )
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    VStack(spacing: Spacing.p_32.rawValue) {
                        VStack(alignment: .leading, spacing: Spacing.p_8.rawValue) {
                            Text("Type")
                                .font(.customFont(size: .text_lg, weight: .semibold))
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.")
                                .font(.customFont(size: .text_sm, weight: .regular))
                                .foregroundStyle(Color.grey500)
                        }
                        
                        VStack(alignment: .leading, spacing: Spacing.p_16.rawValue) {
                            DLButton(
                                size: .lg,
                                type: .ghost,
                                label: "Primary Button XL"
                            )
                            
                            DLButton(
                                size: .md,
                                type: .ghost,
                                label: "Primary Button L"
                            )
                            
                            DLButton(
                                size: .sm,
                                type: .ghost,
                                label: "Primary Button M"
                            )
                            
                            DLButton(
                                size: .xs,
                                type: .ghost,
                                label: "Primary Button S"
                            )
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    VStack(spacing: Spacing.p_32.rawValue) {
                        VStack(alignment: .leading, spacing: Spacing.p_8.rawValue) {
                            Text("Type")
                                .font(.customFont(size: .text_lg, weight: .semibold))
                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.")
                                .font(.customFont(size: .text_sm, weight: .regular))
                                .foregroundStyle(Color.grey500)
                        }
                        
                        VStack(alignment: .leading, spacing: Spacing.p_16.rawValue) {
                            DLButton(
                                size: .lg,
                                type: .ghost,
                                label: "Primary Button XL",
                                disable: true
                            )
                            
                            DLButton(
                                size: .md,
                                type: .ghost,
                                label: "Primary Button L",
                                disable: true
                            )
                            
                            DLButton(
                                size: .sm,
                                type: .ghost,
                                label: "Primary Button M",
                                disable: true
                            )
                            
                            DLButton(
                                size: .xs,
                                type: .ghost,
                                label: "Primary Button S",
                                disable: true
                            )
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                .padding(.vertical, Spacing.p_32.rawValue)
                .padding(.horizontal, Spacing.p_16.rawValue)
            }
        }
        .toolbar(.hidden)
    }
}

struct DLButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        DLButtonComponent()
    }
}
