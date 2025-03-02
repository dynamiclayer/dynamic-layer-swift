//
//  DLIconButton.swift
//  
//
//  Created by DynamicLayers on 05/11/2023.
//

import SwiftUI

@available(iOS 13.0, *)
public enum DLButtonIconSize {
    case lg
    case md
    case sm
    case xs
    
    var size: CGFloat {
        switch self {
        case .lg:
            return 56
        case .md:
            return 48
        case .sm:
            return 40
        case .xs:
            return 32
        }
    }
}

@available(iOS 13.0, *)
public enum DLButtonIconType {
    case primary
    case secondary
    case tertiary
    
    var iconColor: Color {
        switch self {
        case .primary:
            return .white
        case .secondary:
            return Color.white1
        case .tertiary:
            return Color.black1
        }
    }
    
    var bgColor: Color {
        switch self {
        case .primary:
            return .purple500
        case .secondary:
            return .grey800
        case .tertiary:
            return Color.white1
        }
    }
    
    var pressedIconColor: Color {
        switch self {
        case .primary:
            return .white
        case .secondary:
            return Color.white1
        case .tertiary:
            return .black
        }
    }
    
    var pressedBgColor: Color {
        switch self {
        case .primary:
            return .purple700
        case .secondary:1
            return Color.black1
        case .tertiary:
            return .grey100
        }
    }
    
    var disabledIconColor: Color {
        switch self {
        case .primary, .secondary:
            return .grey600
        case .tertiary:
            return .grey500
        }
    }
    
    var disabledBgColor: Color {
        switch self {
        case .primary, .secondary:
            return .grey100
        default:
            return Color.white1
        }
    }
    
    var borderColor: Color {
        switch self{
        case .tertiary:
            return .grey200
        default:
            return .white
        }
    }
}

@available(iOS 13.0, *)
struct DLIconButtonPressedStyle: ButtonStyle {
    var buttonSize: DLButtonIconSize
    var buttonType: DLButtonIconType
    var disable: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(disable ? buttonType.disabledIconColor : (configuration.isPressed ? buttonType.pressedIconColor : buttonType.iconColor))
            .background(disable ? buttonType.disabledBgColor : (configuration.isPressed ? buttonType.pressedBgColor : buttonType.bgColor))
//            .animation(.easeInOut, value: configuration.isPressed)
    }
}

@available(iOS 15.0.0, *)
public struct DLButtonIcon: View {
    var type: DLButtonIconType
    var size: DLButtonIconSize
    let icon: String
    var disable: Bool
    var borderRadius: BorderRadius
    var borderWidth: BorderWidth
    var action: (()->())?
    
    public init(
        type: DLButtonIconType = .primary,
        size: DLButtonIconSize = .lg,
        icon: String,
        disable: Bool = false,
        borderRadius: BorderRadius = .rounded_md,
        borderWidth: BorderWidth = .border,
        action: (() -> ())? = nil
    ) {
        self.type = type
        self.size = size
        self.icon = icon
        self.disable = disable
        self.borderRadius = borderRadius
        self.borderWidth = borderWidth
        self.action = action
    }
    
    public var body: some View {
        Button{
            action?()
        } label: {
            Image(icon)
                .resizable()
                .renderingMode(.template)
                .frame(width: 24, height: 24)
                .frame(width: size.size, height: size.size)
        }
        .buttonStyle(
            DLIconButtonPressedStyle(
                buttonSize: size,
                buttonType: type,
                disable: disable
            )
        )
        .cornerRadius(borderRadius.rawValue)
        .overlay {
            if type == .tertiary {
                RoundedRectangle(cornerRadius: borderRadius.rawValue)
                    .stroke(type.borderColor, lineWidth: borderWidth.rawValue)
            }
        }
        .disabled(disable)
    }
}
