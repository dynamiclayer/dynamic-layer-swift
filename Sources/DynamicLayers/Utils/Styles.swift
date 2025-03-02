//
//  Styles.swift
//  
//
//  Created by DynamicLayers on 03/08/2024.
//

import SwiftUI

@available(iOS 13.0.0, *)
public enum BorderRadius: CGFloat {
    case rounded_none = 0
    case rounded_sm = 2
    case rounded = 4
    case rounded_md = 8
    case rounded_lg = 12
    case rounded_xl = 16
    case rounded_2xl = 20
    case rounded_3xl = 24
    case rounded_4xl = 28
    case rounded_5xl = 32
    case rounded_full = 9999
}

@available(iOS 13.0.0, *)
public enum BorderWidth: CGFloat {
    case border_0 = 0
    case border_0_5 = 0.5
    case border = 1
    case border_1_5 = 1.5
    case border_2 = 2
    case border_3 = 3
    case border_4 = 4
}

@available(iOS 13.0.0, *)
public enum Spacing: CGFloat {
    case p_0 = 0
    case p_2 = 2
    case p_4 = 4
    case p_8 = 8
    case p_12 = 12
    case p_16 = 16
    case p_20 = 20
    case p_24 = 24
    case p_28 = 28
    case p_32 = 32
    case p_36 = 36
    case p_40 = 40
    case p_44 = 44
    case p_48 = 48
    case p_56 = 56
    case p_64 = 64
    case p_80 = 80
    case p_96 = 96
}

@available(iOS 13.0.0, *)
public enum FontSize {
    case text_xs
    case text_sm
    case text_base
    case text_lg
    case text_xl
    case text_2xl
    case text_3xl
    case text_4xl
    case text_5xl
    
    public var size: CGFloat {
        switch self {
        case .text_xs:
            return 12
        case .text_sm:
            return 14
        case .text_base:
            return 16
        case .text_lg:
            return 18
        case .text_xl:
            return 20
        case .text_2xl:
            return 24
        case .text_3xl:
            return 28
        case .text_4xl:
            return 32
        case .text_5xl:
            return 40
        }
    }
    
    var lineSpacing: CGFloat {
        switch self {
        case .text_xs:
            return 0.04
        case .text_sm:
            return 0
        case .text_base:
            return 0
        case .text_lg:
            return -0.04
        case .text_xl:
            return -0.08
        case .text_2xl:
            return -0.1
        case .text_3xl:
            return -0.12
        case .text_4xl:
            return -0.16
        case .text_5xl:
            return -0.4
        }
    }
    
    var lineHeight: CGFloat {
        switch self {
        case .text_xs:
            return 16
        case .text_sm:
            return 20
        case .text_base:
            return 24
        case .text_lg:
            return 28
        case .text_xl:
            return 28
        case .text_2xl:
            return 32
        case .text_3xl:
            return 36
        case .text_4xl:
            return 40
        case .text_5xl:
            return 48
        }
    }
}

@available(iOS 13.0.0, *)
public enum FontWeight: CGFloat {
    case light
    case regular
    case medium
    case semibold
    case bold
    case link
    case strike
}
