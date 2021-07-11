//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

enum AlignItemsValue: String {
    /// Default. Items are stretched to fit the container
    case stretch
    /// Items are positioned at the center of the container
    case center
    /// Items are positioned at the beginning of the container
    case flexStart = "flex-start"
    /// Items are positioned at the end of the container
    case flexEnd = "flex-end"
    /// Items are positioned at the baseline of the container
    case baseline
    /// Sets this property to its default value. Read about initial
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

/// Specifies the alignment for items inside a flexible container
func AlignItems(_ value: AlignItemsValue = .stretch) -> Property {
    Property(name: "align-items", value: value.rawValue)
}
