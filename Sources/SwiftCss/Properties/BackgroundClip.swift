//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


enum BackgroundClipValue: String {
    /// Default value. The background extends behind the border
    case borderBox = "border-box"
    /// The background extends to the inside edge of the border
    case paddingBox = "padding-box"
    /// The background extends to the edge of the content box
    case contentBox = "content-box"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}
/// Defines how far the background (color or image) should extend within an element
func BackgroundClip(_ value: BackgroundClipValue = .borderBox) -> Property {
    Property(name: "background-clip", value: value.rawValue)
}

