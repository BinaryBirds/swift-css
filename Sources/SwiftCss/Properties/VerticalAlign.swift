//
//  VerticalAlign.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum VerticalAlignValue {
    /// The element is aligned with the baseline of the parent. This is default    
    case baseline
    /// Raises or lower an element by the specified length. Negative values are allowed. Read about length units    
    case length(Unit)
    /// The element is aligned with the subscript baseline of the parent    
    case sub
    /// The element is aligned with the superscript baseline of the parent    
    case `super`
    /// The element is aligned with the top of the tallest element on the line    
    case top
    /// The element is aligned with the top of the parent element's font    
    case textTop
    /// The element is placed in the middle of the parent element    
    case middle
    /// The element is aligned with the lowest element on the line    
    case bottom
    /// The element is aligned with the bottom of the parent element's font    
    case textBottom
    /// Sets this property to its default value.     
    case initial
    /// Inherits this property from its parent element. 
    case inherit
    
    var rawValue: String {
        switch self {
        case .baseline:
            return "baseline"
        case .length(let value):
            return value.rawValue
        case .sub:
            return "sub"
        case .super:
            return "super"
        case .top:
            return "top"
        case .textTop:
            return "text-top"
        case .middle:
            return "middle"
        case .bottom:
            return "bottom"
        case .textBottom:
            return "text-bottom"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func VerticalAlign(_ value: String) -> Property {
    Property(name: "vertical-align", value: value)
}

/// Sets the vertical alignment of an element.
public func VerticalAlign(_ value: VerticalAlignValue = .baseline) -> Property {
    VerticalAlign(value.rawValue)
}

/// Sets the vertical alignment of an element.
public func VerticalAlign(_ value: Unit) -> Property {
    VerticalAlign(.length(value))
}
