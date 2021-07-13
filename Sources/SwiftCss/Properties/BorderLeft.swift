//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

/// A shorthand property for all the border-left-* properties
func BorderLeft(_ value: String) -> Property {
    Property(name: "border-left", value: value)
}
