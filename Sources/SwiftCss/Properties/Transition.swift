//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//


/// A shorthand property for all the transition-* properties
func Transition(_ value: String) -> Property {
    Property(name: "transition", value: value)
}
