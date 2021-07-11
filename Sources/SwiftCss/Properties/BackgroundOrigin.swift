//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

enum BackgroundOriginValue: String {
    /// Default value. The background image starts from the upper left corner of the padding edge
    case paddingBox = "padding-box"
    /// The background image starts from the upper left corner of the border
    case borderBox = "border-box"
    /// The background image starts from the upper left corner of the content
    case contentBox = "content-box"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}
/// Specifies the origin position of a background image
func BackgroundOrigin(_ value: BackgroundOriginValue = .paddingBox) -> Property {
    Property(name: "background-origin", value: value.rawValue)
}

