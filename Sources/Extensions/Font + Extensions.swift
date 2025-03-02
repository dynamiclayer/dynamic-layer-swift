//
//  Font + Extensions.swift
//  
//
//  Created by DynamicLayers on 06/08/2024.
//

import SwiftUI

@available(iOS 13.0, *)
public extension Font {
    static func customFont(size: FontSize, weight: Weight) -> Font {
        return .system(size: size.size, weight: weight)
    }
}
