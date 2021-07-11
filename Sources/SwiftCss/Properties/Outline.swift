//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// A shorthand property for the outline-width, outline-style, and the outline-color properties
func Outline(_ value: String) -> Property {
    Property(name: "outline", value: value)
}
