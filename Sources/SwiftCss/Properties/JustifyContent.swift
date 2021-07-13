//
//  JustifyContent.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

public enum JustifyContentValue: String {
    /// Default value. Items are positioned at the beginning of the container    Play it »
    case flexStart = "flex-start"
    /// Items are positioned at the end of the container    Play it »
    case flexEnd = "flex-end"
    /// Items are positioned in the center of the container    Play it »
    case center
    /// Items will have space between them    Play it »
    case spaceBetween = "space-between"
    /// Items will have space before, between, and after them    Play it »
    case spaceAround = "space-around"
    /// Items will have equal space around them    Play it »
    case spaceEvenly = "space-evenly"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

func JustifyContent(_ value: String) -> Property {
    Property(name: "justify-content", value: value)
}

/// Specifies the alignment between the items inside a flexible container when the items do not use all available space
public func JustifyContent(_ value: JustifyContentValue = .flexStart) -> Property {
    JustifyContent(value.rawValue)
}
