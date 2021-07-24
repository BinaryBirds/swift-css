//
//  BoxShadow.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BoxShadowValue {
    public enum ShadowType: String {
        case outset = ""
        case inset
    }
    /// Default value. No shadow is displayed    Play it »
    case none
    /// h-offset    Required. The horizontal offset of the shadow. A positive value puts the shadow on the right side of the box, a negative value puts the shadow on the left side of the box    Play it »
    /// v-offset    Required. The vertical offset of the shadow. A positive value puts the shadow below the box, a negative value puts the shadow above the box    Play it »
    /// blur          Optional. The blur radius. The higher the number, the more blurred the shadow will be    Play it »
    /// spread     Optional. The spread radius. A positive value increases the size of the shadow, a negative value decreases the size of the shadow    Play it »
    /// color        Optional. The color of the shadow. The default value is the text color. Look at CSS Color Values for a complete list of possible color values.
    ///          Note: In Safari (on PC) the color parameter is required. If you do not specify the color, the shadow is not displayed at all.    Play it »
    /// inset        Optional. Changes the shadow from an outer shadow (outset) to an inner shadow    Play it »
    case values(Unit, Unit, Unit?, Unit?, CSSColor, ShadowType?)
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
    
    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case let .values(hOffset, vOffset, blur, spread, color, position):
            return [
                hOffset.rawValue,
                vOffset.rawValue,
                blur?.rawValue,
                spread?.rawValue,
                color.rawValue,
                position?.rawValue,
            ].compactMap { $0 }.filter { !$0.isEmpty }.joined(separator: " ")
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}


public func BoxShadow(_ value: String) -> Property {
    Property(name: "box-shadow", value: value)
}

/// Attaches one or more shadows to an element
public func BoxShadow(_ value: BoxShadowValue = .none) -> Property {
    BoxShadow(value.rawValue)
}

public func BoxShadow(_ hOffset: Unit,
                      _ vOffset: Unit,
                      blur: Unit? = nil,
                      spread: Unit? = nil,
                      color: CSSColor,
                      type: BoxShadowValue.ShadowType = .outset) -> Property {
    BoxShadow(.values(hOffset, vOffset, blur, spread, color, type))
}
