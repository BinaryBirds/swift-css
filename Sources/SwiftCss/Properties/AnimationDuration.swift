//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation



/// Specifies the length of time an animation should take to complete one cycle.
/// This can be specified in seconds or milliseconds.
/// Default value is 0, which means that no animation will occur
enum AnimationDurationValue {
    case zero
    case seconds(Double)
    case milliseconds(Double)
    /// Sets this property to its default value. Read about initial
    case initial
    /// Inherits this property from its parent element.
    case inherit
    
    var rawValue: String {
        switch self {
        case .zero:
            return "0"
        case .seconds(let value):
            guard value != 0 else {
                return "0"
            }
            return "\(value)s"
        case .milliseconds(let value):
            guard value != 0 else {
                return "0"
            }
            return "\(value)ms"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

/// Specifies how long an animation should take to complete one cycle
func AnimationDuration(_ value: AnimationDurationValue = .zero) -> Property {
    Property(name: "animation-duration", value: value.rawValue)
}
