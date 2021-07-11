//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Sets all the properties for a list in one declaration
func ListStyle(_ value: String) -> Property {
    Property(name: "list-style", value: value)
}
