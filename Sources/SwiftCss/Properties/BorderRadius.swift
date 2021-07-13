//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

/// A shorthand property for the four border-*-radius properties
func BorderRadius(_ value: String) -> Property {
    Property(name: "border-radius", value: value)
}
