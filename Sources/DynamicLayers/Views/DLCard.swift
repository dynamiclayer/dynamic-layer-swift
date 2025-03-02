//
//  DLCard.swift
//  
//
//  Created by DynamicLayers on 09/11/2023.
//

import SwiftUI

public enum DLCardSize {
    case md
    case lg
}

@available(iOS 13.0, *)
public enum DLCardState {
    case normal
    case disabled
    
    var iconColor: Color {
        switch self {
        case .normal:
            return .black1
        case .disabled:
            return .grey500
        }
    }
}

@available(iOS 15.0.0, *)
public struct DLCard: View {
    
    let icon: String
    let title: String
    let description: String?
    
    var size: DLCardSize
    var type: DLCardState
    
    var borderRadius: BorderRadius
    var spacing: Spacing
    
    var titleFont: Font
    var descriptionFont: Font
    
    var disableGesture: Bool = false
    
    @State var isActive: Bool = false
    
    public init(
        icon: String,
        title: String,
        description: String? = nil,
        size: DLCardSize = .lg,
        state: DLCardState = .normal,
        borderRadius: BorderRadius = .rounded_lg,
        spacing: Spacing = .p_16,
        titleFont: Font = .customFont(size: .text_sm, weight: .semibold),
        descriptionFont: Font = .customFont(size: .text_sm, weight: .regular),
        disableGesture: Bool = false
    ) {
        self.icon = icon
        self.title = title
        self.description = description
        self.size = size
        self.type = state
        self.borderRadius = borderRadius
        self.spacing = spacing
        self.titleFont = titleFont
        self.descriptionFont = descriptionFont
        self.disableGesture = disableGesture
    }
    
    public var body: some View {
        if size == .lg {
            HStack(spacing: Spacing.p_12.rawValue) {
                Image(icon)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(type.iconColor)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 24, height: 24)
                
                VStack(alignment: .leading, spacing: Spacing.p_0.rawValue) {
                    Text(title)
                        .strikethrough(type == .disabled)
                        .font(titleFont)
                        .lineLimit(1)
                    
                    if let description {
                        Text(description)
                            .strikethrough(type == .disabled)
                            .font(descriptionFont)
                            .lineLimit(1)
                    }
                }
                .foregroundStyle(type == .disabled ? Color.grey500 : .black1)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(spacing.rawValue)
            .background(Color.white1)
            .cornerRadius(borderRadius.rawValue)
            .overlay {
                RoundedRectangle(cornerRadius: borderRadius.rawValue)
                    .stroke(isActive ? Color.black1 : Color.grey200, lineWidth: isActive ? 2 : 1)
            }
            .onTapGesture { withAnimation { isActive.toggle() }}
            .disabled(type == .disabled)
            .disabled(disableGesture)
        } else {
            VStack(alignment: .leading, spacing: Spacing.p_16.rawValue) {
                Image(icon)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(type.iconColor)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 24, height: 24)
                
                VStack(alignment: .leading, spacing: Spacing.p_0.rawValue) {
                    HStack {
                        Text(title)
                            .strikethrough(type == .disabled)
                            .font(titleFont)
                            .lineLimit(1)
                        
                        Spacer()
                    }
                    
                    if let description {
                        Text(description)
                            .strikethrough(type == .disabled)
                            .font(descriptionFont)
                            .lineLimit(1)
                    }
                }
                .foregroundStyle(type == .disabled ? Color.grey500 : .black1)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(spacing.rawValue)
            .background(Color.white1)
            .cornerRadius(borderRadius.rawValue)
            .overlay {
                RoundedRectangle(cornerRadius: borderRadius.rawValue)
                    .stroke(isActive ? Color.black1 : Color.grey200, lineWidth: isActive ? 2 : 1)
            }
            .onTapGesture { withAnimation { isActive.toggle() }}
            .disabled(type == .disabled)
            .disabled(disableGesture)
        }
    }
}
