//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies what happens if content overflows an element's box
func Overflow(_ value: String) -> Property {
    Property(name: "overflow", value: value)
}
