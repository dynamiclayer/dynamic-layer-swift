//
//  File.swift
//  
//
//  Created by DynamicLayers on 05/11/2023.
//

import SwiftUI

@available(iOS 13.0, *)
public extension Color {
    
    // MARK: - Red Colors
    static let red50 = Color("Red50", bundle: .module)
    static let red100 = Color("Red100", bundle: .module)
    static let red200 = Color("Red200", bundle: .module)
    static let red300 = Color("Red300", bundle: .module)
    static let red400 = Color("Red400", bundle: .module)
    static let red500 = Color("Red500", bundle: .module)
    static let red600 = Color("Red600", bundle: .module)
    static let red700 = Color("Red700", bundle: .module)
    static let red800 = Color("Red800", bundle: .module)
    static let red900 = Color("Red900", bundle: .module)
    static let red950 = Color("Red950", bundle: .module)
    
    // MARK: - Green Colors
    static let green50 = Color("Green50", bundle: .module)
    static let green100 = Color("Green100", bundle: .module)
    static let green200 = Color("Green200", bundle: .module)
    static let green300 = Color("Green300", bundle: .module)
    static let green400 = Color("Green400", bundle: .module)
    static let green500 = Color("Green500", bundle: .module)
    static let green600 = Color("Green600", bundle: .module)
    static let green700 = Color("Green700", bundle: .module)
    static let green800 = Color("Green800", bundle: .module)
    static let green900 = Color("Green900", bundle: .module)
    static let green950 = Color("Green950", bundle: .module)
    
    // MARK: - Yellow Colors
    static let yellow50 = Color("Yellow50", bundle: .module)
    static let yellow100 = Color("Yellow100", bundle: .module)
    static let yellow200 = Color("Yellow200", bundle: .module)
    static let yellow300 = Color("Yellow300", bundle: .module)
    static let yellow400 = Color("Yellow400", bundle: .module)
    static let yellow500 = Color("Yellow500", bundle: .module)
    static let yellow600 = Color("Yellow600", bundle: .module)
    static let yellow700 = Color("Yellow700", bundle: .module)
    static let yellow800 = Color("Yellow800", bundle: .module)
    static let yellow900 = Color("Yellow900", bundle: .module)
    static let yellow950 = Color("Yellow950", bundle: .module)
    
    // MARK: - Purple Colors
    static let purple50 = Color("Purple50", bundle: .module)
    static let purple100 = Color("Purple100", bundle: .module)
    static let purple200 = Color("Purple200", bundle: .module)
    static let purple300 = Color("Purple300", bundle: .module)
    static let purple400 = Color("Purple400", bundle: .module)
    static let purple500 = Color("Purple500", bundle: .module)
    static let purple600 = Color("Purple600", bundle: .module)
    static let purple700 = Color("Purple700", bundle: .module)
    static let purple800 = Color("Purple800", bundle: .module)
    static let purple900 = Color("Purple900", bundle: .module)
    static let purple950 = Color("Purple950", bundle: .module)
    
    // MARK: - Grey Color
    static let white1 = Color("White1", bundle: .module)
    static let black1 = Color("Black1", bundle: .module)
    static let grey50 = Color("Grey50", bundle: .module)
    static let grey100 = Color("Grey100", bundle: .module)
    static let grey200 = Color("Grey200", bundle: .module)
    static let grey300 = Color("Grey300", bundle: .module)
    static let grey400 = Color("Grey400", bundle: .module)
    static let grey500 = Color("Grey500", bundle: .module)
    static let grey600 = Color("Grey600", bundle: .module)
    static let grey700 = Color("Grey700", bundle: .module)
    static let grey800 = Color("Grey800", bundle: .module)
    static let grey900 = Color("Grey900", bundle: .module)
    static let grey950 = Color("Grey950", bundle: .module)
    
    // MARK: - Platinum
    static let platinum50 = Color("Platinum50", bundle: .module)
    static let platinum100 = Color("Platinum100", bundle: .module)
    static let platinum200 = Color("Platinum200", bundle: .module)
    static let platinum300 = Color("Platinum300", bundle: .module)
    static let platinum400 = Color("Platinum400", bundle: .module)
    static let platinum500 = Color("Platinum500", bundle: .module)
    static let platinum600 = Color("Platinum600", bundle: .module)
    static let platinum700 = Color("Platinum700", bundle: .module)
    static let platinum800 = Color("Platinum800", bundle: .module)
    static let platinum900 = Color("Platinum900", bundle: .module)
    static let platinum950 = Color("Platinum950", bundle: .module)
    
    // MARK: - Black Color
    static let badgeDefaultBg = Color("BadgeDefaultBg", bundle: .module)
    
    // MARK: - Others
    static let chipBorderColor = Color("ChipBorderColor", bundle: .module) //#E2E8F0
    static let chipBgColor = Color("ChipBgColor", bundle: .module) //#F8FAFC

    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
