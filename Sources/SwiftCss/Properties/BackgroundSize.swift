//
//  BackgroundSize.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

public enum BackgroundSizeValue: String {
    /// Default value. The background image is displayed in its original size
    case auto
    /// Sets the width and height of the background image. The first value sets the width, the second value sets the height. If only one value is given, the second is set to "auto". Read about length units
    case length
    /// Sets the width and height of the background image in percent of the parent element. The first value sets the width, the second value sets the height. If only one value is given, the second is set to "auto"
    case percentage
    /// Resize the background image to cover the entire container, even if it has to stretch the image or cut a little bit off one of the edges
    case cover
    /// Resize the background image to make sure the image is fully visible
    case contain
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

func BackgroundSize(_ value: String) -> Property {
    Property(name: "background-size", value: value)
}

/// Specifies the size of the background images
public func BackgroundSize(_ value: BackgroundSizeValue = .auto) -> Property {
    BackgroundSize(value.rawValue)
}
