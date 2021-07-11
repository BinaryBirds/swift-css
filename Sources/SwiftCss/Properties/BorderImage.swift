//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// A shorthand property for all the border-image-* properties
func BorderImage(_ value: String) -> Property {
    Property(name: "border-image", value: value)
}
