//
//  CSSColorValue.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 11..
//

import Foundation

public enum CSSColorValue {
    
    /// Specifies the background color.
    case color(CSSColor)
    /// Specifies that the background color should be transparent. This is default
    case transparent
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
    
    var rawValue: String {
        switch self {
        case .color(let value):
            return value.rawValue
        case .transparent:
            return "transparent"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}
