//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

enum PaddingValue {
    /// Specifies a fixed bottom padding in px, pt, cm, etc. Default value is 0.
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
    
    var rawValue: String {
        switch self {
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}


/// A shorthand property for all the padding-* properties
func Padding(_ value: String) -> Property {
    Property(name: "padding", value: value)
}

/// Sets all the Padding properties in one declaration
func Padding(_ value: PaddingValue = .length(.zero)) -> Property {
    Padding(value.rawValue)
}

func Padding(_ value: Unit = .zero) -> Property {
    Padding(.length(value))
}

func Padding(h: PaddingValue = .length(.zero),
            v: PaddingValue = .length(.zero)) -> Property {
    Padding(h.rawValue + " " + v.rawValue)
}

func Padding(h: Unit = .zero, v: Unit = .zero) -> Property {
    Padding(h: .length(h), v: .length(v))
}

func Padding(t: PaddingValue = .length(.zero),
            r: PaddingValue = .length(.zero),
            b: PaddingValue = .length(.zero),
            l: PaddingValue = .length(.zero)) -> Property {
    Padding(t.rawValue + " " + r.rawValue + " " + b.rawValue + " " + l.rawValue)
}

func Padding(t: Unit = .zero, r: Unit = .zero, b: Unit = .zero, l: Unit = .zero) -> Property {
    Padding(t: .length(t), r: .length(r), b: .length(b), l: .length(l))
}
