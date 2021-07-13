//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

/// A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color
func BorderBottom(_ value: String) -> Property {
    Property(name: "border-bottom", value: value)
}
