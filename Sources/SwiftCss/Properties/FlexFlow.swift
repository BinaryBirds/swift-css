//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

/// A shorthand property for the flex-direction and the flex-wrap properties
func FlexFlow(_ value: String) -> Property {
    Property(name: "flex-flow", value: value)
}
