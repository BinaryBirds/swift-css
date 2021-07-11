//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// A shorthand property for the flex-grow, flex-shrink, and the flex-basis properties
func Flex(_ value: String) -> Property {
    Property(name: "flex", value: value)
}
