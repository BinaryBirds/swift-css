//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

enum BackgroundPositionValue {
    /// left center
    case left
    /// left top
    case leftTop
    /// left center
    case leftCenter
    /// left bottom
    case leftBottom
    /// right center
    case right
    /// right top
    case rightTop
    /// right center
    case rightCenter
    /// right bottom
    case rightBottom
    /// center center
    case center
    /// center top
    case centerTop
    /// center center
    case centerCenter
    /// center bottom
    case centerBottom
    /// The first value is the horizontal position and the second value is the vertical. The top left corner is 0% 0%. The right bottom corner is 100% 100%. If you only specify one value, the other value will be 50%. . Default value is: 0% 0%
    case percent(Double, Double?)
    /// The first value is the horizontal position and the second value is the vertical. The top left corner is 0 0. Units can be pixels (0px 0px) or any other CSS units. If you only specify one value, the other value will be 50%. You can mix % and positions
    case position(String, String?)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
    
    var rawValue: String {
        switch self {
        case .left:
            return "left"
        case .leftTop:
            return "left top"
        case .leftCenter:
            return "left center"
        case .leftBottom:
            return "left bottom"
        case .right:
            return "right"
        case .rightTop:
            return "right top"
        case .rightCenter:
            return "right center"
        case .rightBottom:
            return "right bottom"
        case .center:
            return "center"
        case .centerTop:
            return "center"
        case .centerCenter:
            return "center center"
        case .centerBottom:
            return "center bottom"
        case .percent(let x, let y):
            return "\(x)% \(y ?? 50)%"
        case .position(let x, let y):
            return "\(x) \(y ?? "50%")"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

/// Specifies the position of a background image
func BackgroundPosition(_ value: BackgroundPositionValue) -> Property {
    Property(name: "background-position", value: value.rawValue)
}
