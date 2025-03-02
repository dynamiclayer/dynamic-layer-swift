//
//  DLTextField.swift
//
//
//  Created by DynamicLayers on 15/11/2023.
//

import SwiftUI

public enum DLInputFieldState {
    case disabled
    case normal
}

@available(iOS 13.0, *)
public enum DLInputFieldSize {
    case lg
    case md
    case sm
    
    var height: CGFloat {
        switch self {
        case .lg:
            return 56
        case .md:
            return 48
        case .sm:
            return 40
        }
    }
    
    var horizontalPadding: CGFloat {
        switch self {
        case .lg, .md:
            return Spacing.p_16.rawValue
        case .sm:
            return Spacing.p_12.rawValue
        }
    }
}

public enum DLInputFieldType: Equatable {
    case icon(icon: String?, isTrailing: Bool)
    case warning
    case success
    case error
    case none
    
    var icon: String {
        switch self {
        case .icon(icon: let icon, _):
            return icon ?? "ic_Info"
        case .warning:
            return "ic_AlertTriangle"
        case .success:
            return "ic_Success"
        case .error:
            return "ic_Error"
        case .none:
            return ""
        }
    }
    
    var disabled: Bool {
        switch self {
        case .icon:
            return false
        default:
            return true
        }
    }
    
    public static func == (lhs: DLInputFieldType, rhs: DLInputFieldType) -> Bool {
        switch (lhs, rhs) {
        case (.icon(let lhsIcon), .icon(let rhsIcon)):
            return lhsIcon == rhsIcon
        case (.warning, .warning),
            (.success, .success),
            (.error, .error),
            (.none, .none):
            return true
        default:
            return false
        }
    }
}

@available(iOS 15.0, *)
public struct DLInputField: View {
    
    var state: DLInputFieldState
    var size: DLInputFieldSize
    let placeholder: String
    @Binding var text: String
    @Binding var type: DLInputFieldType
    @Binding var errorString: String
    var borderRadius: BorderRadius
    var horizontalSpacing: Spacing
    var font: Font
    var onTrailingIconPressed: (() -> ())?
    
    @FocusState var focused: Bool
    
    public init(
        state: DLInputFieldState = .normal,
        size: DLInputFieldSize = .lg,
        placeholder: String,
        text: Binding<String>,
        type: Binding<DLInputFieldType>,
        errorString: Binding<String>,
        borderRadius: BorderRadius = .rounded_md,
        horizontalSpacing: Spacing = .p_16,
        font: Font = .customFont(size: .text_base, weight: .regular),
        onTrailingIconPressed: (()->())? = nil
    ) {
        self.state = state
        self.size = size
        self.placeholder = placeholder
        self._text = text
        self._type = type
        self._errorString = errorString
        self.onTrailingIconPressed = onTrailingIconPressed
        self.borderRadius = borderRadius
        self.horizontalSpacing = horizontalSpacing
        self.font = font
    }
    
    public var body: some View {
        let isError = (type == .error)
        let isActive = focused || text.count > 0
        
        VStack(alignment: .leading, spacing: Spacing.p_8.rawValue) {
            HStack(spacing: Spacing.p_16.rawValue) {
                
                switch type {
                case .icon(let icon, let isTrailing):
                    if !isTrailing {
                        Icon()
                    }
                default:
                    EmptyView()
                }
                
                ZStack(alignment: isActive ? .topLeading : .center) {
                    TextField("", text: $text)
                        .foregroundColor(Color.black1)
                        .frame(height: 24)
                        .font(font)
                        .placeholder(when: text.isEmpty) {
                            Text(placeholder)
                                .foregroundColor(Color.grey500)
                                .strikethrough(state == .disabled)
                        }
                        .opacity(isActive ? 1 : 0)
                        .offset(y: 7)
                        .focused($focused)
                    
                    HStack {
                        Text(placeholder)
                            .foregroundColor(isError ? Color.red500 : Color.grey500)
                            .strikethrough(state == .disabled)
                            .frame(height: 16)
                            .font(.system(size: isActive ? FontSize.text_xs.size : FontSize.text_base.size, weight: .regular))
                            .offset(y: isActive ? -7 : 0)
                        Spacer()
                    }
                }
                .animation(.linear, value: focused)
                
                switch type {
                case .icon(let icon, let isTrailing):
                    if isTrailing {
                        Icon()
                    }
                case .warning, .success, .error:
                    Icon()
                case .none:
                    EmptyView()
                }
            }
            .frame(height: size.height)
            .padding(.horizontal, size.horizontalPadding)
            .background(Color.white1)
            .cornerRadius(borderRadius.rawValue)
            .overlay {
                RoundedRectangle(cornerRadius: borderRadius.rawValue)
                    .stroke(focused ? Color.black1 : Color.grey200, lineWidth: focused ? BorderWidth.border_2.rawValue : BorderWidth.border.rawValue)
            }
            .onTapGesture {
                focused.toggle()
            }
            
            if !errorString.isEmpty {
                Text(errorString)
                    .foregroundColor(Color.red500)
                    .frame(height: 24)
                    .font(.system(size: 16, weight: .regular))
            }
        }
        .disabled(state == .disabled)
    }
    
    private func Icon() -> some View {
        Button {
            onTrailingIconPressed?()
        } label: {
            if type != .none {
                Image(uiImage: UIImage(named: type.icon, in: .module, with: nil)!)
                    .resizable()
                    .frame(width: 24, height: 24)
            }
        }
        .disabled(type.disabled)
    }
}
