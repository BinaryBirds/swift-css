//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies whether the text of an element can be selected
func UserSelect(_ value: String) -> Property {
    Property(name: "user-select", value: value)
}
