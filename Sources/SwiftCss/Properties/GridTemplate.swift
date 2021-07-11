//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation



/// A shorthand property for the grid-template-rows, grid-template-columns and grid-areas properties
func GridTemplate(_ value: String) -> Property {
    Property(name: "grid-template", value: value)
}
