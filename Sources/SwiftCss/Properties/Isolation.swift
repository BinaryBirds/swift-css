//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Defines whether an element must create a new stacking content
func Isolation(_ value: String) -> Property {
    Property(name: "isolation", value: value)
}
