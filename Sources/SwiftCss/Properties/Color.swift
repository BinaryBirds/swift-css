//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

enum ColorValue {
    /// Specifies the text color.
    case color(CSSColor)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
    
    var rawValue: String {
        switch self {
        case .color(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

/// Sets the color of text
func Color(_ value: ColorValue) -> Property {
    Property(name: "color", value: value.rawValue)
}

func Color(_ value: CSSColor) -> Property {
    Color(.color(value))
}
