//
//  DLBadgeNotification.swift
//  
//
//  Created by DynamicLayers on 11/11/2023.
//

import SwiftUI

public enum DLNotificationBadgeSize: Equatable {
    case sm
    case md(text: String)
}

@available(iOS 15.0.0, *)
public struct DLBadgeNotification: View {
    
    var size: DLNotificationBadgeSize
    var font: Font
    var horizontalSpacing: Spacing
    
    public init(
        size: DLNotificationBadgeSize = .sm,
        horizontalSpacing: Spacing = .p_8,
        font: Font = .customFont(size: .text_xs, weight: .semibold)
    ) {
        self.size = size
        self.horizontalSpacing = horizontalSpacing
        self.font = font
    }
    
    public var body: some View {
        switch size {
        case .sm:
            Circle()
                .fill(Color.red500)
                .frame(width: 8, height: 8)
        case .md(let text):
            Text("\(text)")
                .foregroundColor(.white)
                .font(font)
                .padding(.horizontal, horizontalSpacing.rawValue)
                .frame(height: 16)
                .background(Color.red500)
                .cornerRadius(BorderRadius.rounded_full.rawValue)
        }
    }
}
