//
//  DLButton.swift
//  
//
//  Created by DynamicLayers on 06/11/2023.
//

import SwiftUI

@available(iOS 13.0, *)
public enum ButtonSize {
    case lg
    case md
    case sm
    case xs
    
    var height: CGFloat {
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
    
    var font: Font {
        switch self {
        case .xs:
            return .customFont(size: .text_sm, weight: .bold)
        default:
            return .customFont(size: .text_base, weight: .bold)
        }
    }
    
    var padding: (CGFloat, CGFloat){
        switch self {
        case .lg:
            return (Spacing.p_24.rawValue, Spacing.p_16.rawValue)
        case .md:
            return (Spacing.p_16.rawValue, Spacing.p_12.rawValue)
        case .sm:
            return (Spacing.p_16.rawValue, Spacing.p_8.rawValue)
        case .xs:
            return (Spacing.p_12.rawValue, 6)
        }
    }
}

@available(iOS 13.0, *)
public enum ButtonType {
    case primary
    case secondary
    case tertiary
    case ghost
    
    var textColor: Color {
        switch self {
        case .primary:
            return .white
        case .secondary:
            return .white1
        case .ghost:
            return .purple500
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
        case .ghost:
            return .clear
        }
    }
    
    var pressedTextColor: Color {
        switch self {
        case .primary:
            return .white
        case .secondary:
            return Color.white1
        case .tertiary:
            return Color.black1
        case .ghost:
            return .purple700
        }
    }
    
    var pressedBgColor: Color {
        switch self {
        case .primary:
            return .purple700
        case .secondary:
            return Color.black1
        case .tertiary:
            return .grey100
        case .ghost:
            return .clear
        }
    }
    
    var disabledTextColor: Color {
        switch self {
        case .primary, .secondary:
            return .grey600
        case .tertiary, .ghost:
            return .grey500
        }
    }
    
    var disabledBgColor: Color {
        switch self {
        case .primary, .secondary:
            return .grey100
        default:
            return .clear
        }
    }
    
    var borderColor: Color {
        switch self{
        case .tertiary:
            return .grey200
        default:
            return .clear
        }
    }
    
    var underline: Bool {
        switch self{
        case .ghost:
            return true
        default:
            return false
        }
    }
}

@available(iOS 13.0, *)
struct DLButtonPressEffect: ButtonStyle {
    var buttonSize: ButtonSize
    var buttonType: ButtonType
    var disable: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(disable ? buttonType.disabledTextColor : (configuration.isPressed ? buttonType.pressedTextColor : buttonType.textColor))
            .background(disable ? buttonType.disabledBgColor :  (configuration.isPressed ? buttonType.pressedBgColor : buttonType.bgColor))
//            .animation(.easeInOut, value: configuration.isPressed)
    }
}

@available(iOS 15.0.0, *)
public struct DLButton: View {
    
    var size: ButtonSize
    var type: ButtonType
    var label: String
    var width: CGFloat?
    var icon: (leadingIcon: String, trailingIcon: String)?
    var disable: Bool
    var borderRadius: BorderRadius
    var borderWidth: BorderWidth
    var isPackageIcon: Bool
    var action: (()->())?
    
    public init(
        size: ButtonSize = .lg,
        type: ButtonType = .primary,
        label: String,
        width: CGFloat? = nil,
        icon: (leadingIcon: String, trailingIcon: String)? = nil,
        disable: Bool = false,
        borderRadius: BorderRadius = .rounded_md,
        borderWidth: BorderWidth = .border,
        isPackageIcon: Bool = false,
        action: (() -> Void)? = nil
    ) {
        self.size = size
        self.type = type
        self.label = label
        self.width = width
        self.icon = icon
        self.disable = disable
        self.borderRadius = borderRadius
        self.borderWidth = borderWidth
        self.isPackageIcon = isPackageIcon
        self.action = action
    }
    
    public var body: some View {
        Button {
            action?()
        } label: {
            HStack(spacing: size.padding.0) {
                if let leadingIcon = icon?.leadingIcon, !leadingIcon.isEmpty {
                    if isPackageIcon {
                        Image(uiImage: UIImage(named: leadingIcon, in: .module, with: nil)!)
                            .resizable()
                            .renderingMode(.template)
                            .foregroundStyle(disable ? type.disabledTextColor : type.textColor)
                            .frame(width: 24, height: 24)
                    } else {
                        Image(leadingIcon)
                            .resizable()
                            .renderingMode(.template)
                            .foregroundStyle(disable ? type.disabledTextColor : type.textColor)
                            .frame(width: 24, height: 24)
                    }
                }
                
                Text(label)
                    .font(size.font)
                    .underline(type.underline)
                    .lineLimit(1)
                
                if let trailingIcon = icon?.trailingIcon, !trailingIcon.isEmpty {
                    if isPackageIcon {
                        Image(uiImage: UIImage(named: trailingIcon, in: .module, with: nil)!)
                            .resizable()
                            .renderingMode(.template)
                            .foregroundStyle(disable ? type.disabledTextColor : type.textColor)
                            .frame(width: 24, height: 24)
                    } else {
                        Image(trailingIcon)
                            .resizable()
                            .renderingMode(.template)
                            .foregroundStyle(disable ? type.disabledTextColor : type.textColor)
                            .frame(width: 24, height: 24)
                    }
                }
            }
            .padding(.horizontal, size.padding.0)
            .padding(.vertical, size.padding.1)
            .if(width != nil) { view in
                view
                    .frame(maxWidth: width)
            }
        }
        .disabled(disable)
        .buttonStyle(
            DLButtonPressEffect(
                buttonSize: size,
                buttonType: type,
                disable: disable
            )
        )
        .background(Color.white1)
        .cornerRadius(borderRadius.rawValue)
        .overlay {
            RoundedRectangle(cornerRadius: borderRadius.rawValue)
                .stroke(type.borderColor, lineWidth: borderWidth.rawValue)
        }
    }
}
