//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Defines whether or not an element reacts to pointer events
func PointerEvents(_ value: String) -> Property {
    Property(name: "pointer-events", value: value)
}
