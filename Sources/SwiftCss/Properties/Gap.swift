//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation



/// A shorthand property for the row-gap and the column-gap properties
func Gap(_ value: String) -> Property {
    Property(name: "gap", value: value)
}

