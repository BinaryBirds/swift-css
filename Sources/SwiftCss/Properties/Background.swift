//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

// @TODO: background
/// A shorthand property for all the background-* properties
func Background(_ value: String) -> Property {
    Property(name: "background", value: value)
}
