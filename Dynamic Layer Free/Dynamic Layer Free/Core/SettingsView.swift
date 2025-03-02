//
//  SettingsView.swift
//  DynamicLayersExample
//
//  Created by Muhammad Abbas on 06/01/2025.
//

import SwiftUI
import Dynamiclayer

struct SettingsView: View {
    @AppStorage("enable_dark_mode") private var enableDarkMode: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            DLTopNavigation(
                size: .lg,
                title: "Settings",
                iconLeft: "",
                iconRight: "ic_DarkMode"
            ) {
                /// - Leading icon action
            } iconRightAction: {
                enableDarkMode.toggle()
            }
            .frame(height: 88)
            
            VStack(spacing: Spacing.p_32.rawValue) {
                Image("ic_DynamiclayerBlack")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(Color.black1)
                    .frame(width: 240, height: 240)
                
                VStack(spacing: Spacing.p_16.rawValue) {
                    Text("Dynamic Layer")
                        .font(Font.customFont(size: .text_2xl, weight: .semibold))
                    
                    Text("Dynamic Layer is a component library for Figma, Swift, Kotlin and React Native. Not only do you have the option to install the library, you also get the complete files to make changes to the components yourself.")
                        .font(Font.customFont(size: .text_sm, weight: .regular))
                        .foregroundStyle(Color.grey500)
                        .multilineTextAlignment(.center)
                }
            }
            .padding(Spacing.p_32.rawValue)
            
            Spacer()
        }
    }
}

#Preview {
    SettingsView()
}
