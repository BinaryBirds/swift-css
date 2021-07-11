//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// A shorthand property for column-width and column-count
func Columns(_ value: String) -> Property {
    Property(name: "columns", value: value)
}
