//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// A shorthand property for the font-style, font-variant, font-weight, font-size/line-height, and the font-family properties
func Font(_ value: String) -> Property {
    Property(name: "font", value: value)
}
