//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


enum BackfaceVisibilityValue: String {
    /// Default value. The backside is visible
    case visible
    /// The backside is not visible
    case hidden
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

/// Defines whether or not the back face of an element should be visible when facing the user
func BackfaceVisibility(_ value: BackfaceVisibilityValue = .visible) -> Property {
    Property(name: "backface-visibility", value: value.rawValue)
}
