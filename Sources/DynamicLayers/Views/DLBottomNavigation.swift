//
//  DLBottomNavigationBar.swift
//  
//
//  Created by DynamicLayers on 09/11/2023.
//


import SwiftUI

public struct DLBottomItem {
    let id = UUID().uuidString
    var label: String?
    let icon: String
    var badgeSize: DLNotificationBadgeSize?
    
    public init(
        label: String? = nil,
        icon: String,
        badgeSize: DLNotificationBadgeSize? = nil
    ) {
        self.label = label
        self.icon = icon
        self.badgeSize = badgeSize
    }
    
    public func getXOffset() -> CGFloat {
        if badgeSize == .sm {
            return 7
        } else {
            return 12
        }
    }
}

@available(iOS 15.0, *)
public struct DLBottomNavigation: View {
    
    let items: [DLBottomItem]
    @Binding var selectedIndex: Int
    var borderWidth: BorderWidth
    var font: Font
    
    public init(
        items: [DLBottomItem],
        selectedIndex: Binding<Int>,
        borderWidth: BorderWidth = .border,
        font: Font = .customFont(size: .text_sm, weight: .bold)
    ) {
        self.items = items
        self._selectedIndex = selectedIndex
        self.borderWidth = borderWidth
        self.font = font
    }
    
    public var body: some View {
        HStack(spacing: Spacing.p_0.rawValue) {
            ForEach((0..<items.count), id: \.self){ index in
                TabItem(item: items[index], isSelected: selectedIndex == index, font: font){
                    selectedIndex = index
                }
            }
        }
        .padding(.horizontal, Spacing.p_16.rawValue)
        .background(Color.white1)
        .frame(height: 65)
        .border(width: borderWidth.rawValue, edges: [.top], color: Color.grey200)
    }
    
    func TabItem(item: DLBottomItem, isSelected: Bool, font: Font, action: @escaping (()->())) -> some View {
        GeometryReader { geometry in
            ZStack(alignment: .topLeading) {
                VStack(spacing: Spacing.p_8.rawValue) {
                    Image(item.icon)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 24, height: 24)
                    
                    if let title = item.label {
                        Text(title)
                            .font(font)
                            .lineLimit(1)
                    }
                }
                .foregroundColor(isSelected ? .black1 : .grey400)
                .frame(maxWidth: .infinity)
                .padding(Spacing.p_8.rawValue)
                .frame(height: 64)
                .background(Color.white1)
                
                if let badgeType = item.badgeSize {
                    DLBadgeNotification(size: badgeType)
                        .offset(x: (geometry.size.width/2) + 5, y: 7)
                }
            }
            .onTapGesture {
                action()
            }
        }
    }
}
