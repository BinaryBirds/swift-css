//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

enum MarginValue {
    /// Specifies a fixed bottom margin in px, cm, em, etc. Default value is 0. Negative values are allowed.
    case length(Unit)
    // The browser calculates a bottom margin
    case auto
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
    
    var rawValue: String {
        switch self {
        case .auto:
            return "auto"
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

func Margin(_ value: String) -> Property {
    Property(name: "margin", value: value)
}

/// Sets all the margin properties in one declaration
func Margin(_ value: MarginValue = .length(.zero)) -> Property {
    Margin(value.rawValue)
}

func Margin(_ value: Unit = .zero) -> Property {
    Margin(.length(value))
}

func Margin(h: MarginValue = .length(.zero),
            v: MarginValue = .length(.zero)) -> Property {
    Margin(h.rawValue + " " + v.rawValue)
}

func Margin(h: Unit = .zero, v: Unit = .zero) -> Property {
    Margin(h: .length(h), v: .length(v))
}

func Margin(t: MarginValue = .length(.zero),
            r: MarginValue = .length(.zero),
            b: MarginValue = .length(.zero),
            l: MarginValue = .length(.zero)) -> Property {
    Margin(t.rawValue + " " + r.rawValue + " " + b.rawValue + " " + l.rawValue)
}

func Margin(t: Unit = .zero, r: Unit = .zero, b: Unit = .zero, l: Unit = .zero) -> Property {
    Margin(t: .length(t), r: .length(r), b: .length(b), l: .length(l))
}
