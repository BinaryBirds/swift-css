//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Sets the distance between the borders of adjacent cells
func BorderSpacing(_ value: String) -> Property {
    Property(name: "border-spacing", value: value)
}
