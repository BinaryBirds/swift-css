//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// A shorthand property for all the column-rule-* properties
func ColumnRule(_ value: String) -> Property {
    Property(name: "column-rule", value: value)
}
