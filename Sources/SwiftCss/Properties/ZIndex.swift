//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Sets the stack order of a positioned element
func ZIndex(_ value: String) -> Property {
    Property(name: "z-index", value: value)
}
