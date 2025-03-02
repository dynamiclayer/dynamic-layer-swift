//
//  DLTopNavigation.swift
//  
//
//  Created by DynamicLayers on 15/11/2023.
//

import SwiftUI

@available(iOS 13.0, *)
public enum DLTopNavigationSize {
    case md
    case lg
    
    var font: Font {
        switch self {
        case .md:
            return .customFont(size: .text_base, weight: .semibold)
        case .lg:
            return .customFont(size: .text_4xl, weight: .bold)
        }
    }
    
    var height: CGFloat {
        switch self {
        case .md:
            return 56
        case .lg:
            return 88
        }
    }
}

@available(iOS 15.0, *)
public struct DLTopNavigation: View {
    
    var size: DLTopNavigationSize
    let title: String
    var iconLeft: String?
    var iconRight: String?
    var leftButtonAction: (()->())?
    var rightButtonAction: (()->())?
    
    public init(
        size: DLTopNavigationSize = .md,
        title: String,
        iconLeft: String? = nil,
        iconRight: String? = nil,
        iconLeftAction: (()->())? = nil,
        iconRightAction: (()->())? = nil
    ) {
        self.size = size
        self.title = title
        self.iconLeft = iconLeft
        self.iconRight = iconRight
        self.leftButtonAction = iconLeftAction
        self.rightButtonAction = iconRightAction
    }
    
    public var body: some View {
        HStack(spacing: size == .md ? Spacing.p_16.rawValue : Spacing.p_0.rawValue) {
            if size == .md {
                Button {
                    leftButtonAction?()
                } label: {
                    Image(iconLeft ?? "")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(Color.black1)
                        .frame(width: 24, height: 24)
                        .padding(Spacing.p_16.rawValue)
                }
            }
            
            Text(title)
                .font(size.font)
                .foregroundStyle(Color.black1)
                .frame(maxWidth: .infinity, alignment: size == .md ? .center : .leading)
                .padding(.horizontal, size == .md ? Spacing.p_0.rawValue : Spacing.p_16.rawValue)
                .lineLimit(1)
            
            if size == .lg {
                Button {
                    leftButtonAction?()
                } label: {
                    Image(iconLeft ?? "")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(Color.black1)
                        .frame(width: 24, height: 24)
                        .padding(Spacing.p_16.rawValue)
                }
            }
            
            Button {
                rightButtonAction?()
            } label: {
                Image(iconRight ?? "")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(Color.black1)
                    .frame(width: 24, height: 24)
                    .padding(Spacing.p_16.rawValue)
            }
        }
        .frame(height: size.height)
        .border(width: 1, edges: [.bottom], color: Color.grey200.opacity(size == .md ? 1 : 0))
    }
}
