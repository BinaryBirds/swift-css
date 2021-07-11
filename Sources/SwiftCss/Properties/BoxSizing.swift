//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


enum BoxSizingValue: String {
    /// Default. The width and height properties (and min/max properties) includes only the content. Border and padding are not included
    case contentBox = "content-box"
    /// The width and height properties (and min/max properties) includes content, padding and border
    case borderBox = "border-box"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

/// Defines how the width and height of an element are calculated: should they include padding and borders, or not
func BoxSizing(_ value: BoxSizingValue = .contentBox) -> Property {
    Property(name: "box-sizing", value: value.rawValue)
}
