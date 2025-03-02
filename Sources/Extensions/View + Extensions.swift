//
//  File.swift
//  DynamicLayers
//
//  Created by DynamicLayers on 08/12/2024.
//

import SwiftUI

@available(iOS 13.0, *)
extension View {
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}

@available(iOS 13.0, *)
extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content
    ) -> some View {
        
        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
    
    func placeholder(
        _ text: String,
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        isDisabled: Bool = false
    ) -> some View {
        
        placeholder(when: shouldShow, alignment: alignment) {
            Text(text)
                .foregroundColor(Color.grey500)
                .strikethrough(isDisabled)
        }
    }
}
