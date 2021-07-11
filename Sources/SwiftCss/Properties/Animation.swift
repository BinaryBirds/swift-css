//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

// @TODO: animation
/// A shorthand property for all the animation-* properties
func Animation(_ value: String) -> Property {
    Property(name: "animation", value: value)
}
