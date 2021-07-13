//
//  MaxWidth.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum MaxWidthValue {
    /// No maximum width. This is default
    case none
    /// Defines the maximum width in px, cm, etc. Read about length units
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

func MaxWidth(_ value: String) -> Property {
    Property(name: "max-width", value: value)
}

/// Sets the maximum width of an element
public func MaxWidth(_ value: MaxWidthValue = .none) -> Property {
    MaxWidth(value.rawValue)
}

/// Sets the maximum width of an element
public func MaxWidth(_ value: Unit) -> Property {
    MaxWidth(.length(value))
}
