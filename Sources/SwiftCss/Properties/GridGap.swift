//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation



/// A shorthand property for the grid-row-gap and grid-column-gap properties
func GridGap(_ value: String) -> Property {
    Property(name: "grid-gap", value: value)
}
