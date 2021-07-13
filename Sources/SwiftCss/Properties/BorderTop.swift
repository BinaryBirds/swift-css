//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//


/// A shorthand property for border-top-width, border-top-style and border-top-color
func BorderTop(_ value: String) -> Property {
    Property(name: "border-top", value: value)
}
