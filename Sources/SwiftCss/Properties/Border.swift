//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


enum BorderWidthValue {
    /// Specifies a medium bottom border. This is default
    case medium
    /// Specifies a thin bottom border
    case thin
    /// Specifies a thick bottom border
    case thick
    /// Allows you to define the thickness of the bottom border. Read about length units
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
    
    var rawValue: String {
        switch self {
        case .medium:
            return "medium"
        case .thin:
            return "thin"
        case .thick:
            return "thick"
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}


// @TODO: border
/// A shorthand property for border-width, border-style and border-color
func Border(_ value: String) -> Property {
    Property(name: "border", value: value)
}
