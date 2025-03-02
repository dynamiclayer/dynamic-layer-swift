//
//  DLButtonDock.swift
//
//
//  Created by DynamicLayers on 29/08/2024.
//

import SwiftUI

@available(iOS 13.0.0, *)
public enum DLButtonDockType {
    case singleButton(title: String)
    case doubleHorizontalButtons(firstButtonTitle: String, secondButtonTitle: String)
    case doubleVerticalButtons(firstButtonTitle: String, secondButtonTitle: String)
}

@available(iOS 15.0.0, *)
public struct DLButtonDock: View {
    
    var type: DLButtonDockType
    var borderWidth: BorderWidth
    var borderRadius: BorderRadius
    var firstButtonAction: (()->())?
    var secondButtonAction: (()->())?
    
    public init(
        type: DLButtonDockType,
        borderWidth: BorderWidth = .border,
        borderRadius: BorderRadius = .rounded_full,
        firstButtonAction: (()->())? = nil,
        secondButtonAction: (()->())? = nil
    ) {
        self.type = type
        self.borderWidth = borderWidth
        self.borderRadius = borderRadius
        self.firstButtonAction = firstButtonAction
        self.secondButtonAction = secondButtonAction
    }
    
    public var body: some View {
        HStack(spacing: Spacing.p_16.rawValue) {
            switch type {
            case .singleButton(title: let title):
                DLButton(size: .lg, type: .secondary, label: title, width: .infinity){
                    firstButtonAction?()
                }
            case .doubleHorizontalButtons(firstButtonTitle: let leftTitle, secondButtonTitle: let rightTitle):
                HStack(spacing: Spacing.p_16.rawValue) {
                    DLButton(size: .lg, type: .tertiary, label: leftTitle, width: .infinity){
                        firstButtonAction?()
                    }
                    
                    DLButton(size: .lg, type: .secondary, label: rightTitle, width: .infinity){
                        secondButtonAction?()
                    }
                }
            case .doubleVerticalButtons(firstButtonTitle: let leftTitle, secondButtonTitle: let rightTitle):
                VStack(spacing: Spacing.p_16.rawValue) {
                    DLButton(size: .lg, type: .secondary, label: rightTitle, width: .infinity){
                        firstButtonAction?()
                    }
                    
                    DLButton(size: .lg, type: .tertiary, label: leftTitle, width: .infinity){
                        secondButtonAction?()
                    }
                }
            }
        }
        .padding(Spacing.p_16.rawValue)
        .background(Color.clear)
        .border(width: borderWidth.rawValue, edges: [.top], color: Color.grey200)
    }
}
