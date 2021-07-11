//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies whether an element should float to the left, right, or not at all
func Float(_ value: String) -> Property {
    Property(name: "float", value: value)
}
