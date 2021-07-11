//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// A shorthand property for all the padding-* properties
func Padding(_ value: String) -> Property {
    Property(name: "padding", value: value)
}
