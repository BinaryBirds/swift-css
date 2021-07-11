//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Sets whether table borders should collapse into a single border or be separated
func BorderCollapse(_ value: String) -> Property {
    Property(name: "border-collapse", value: value)
}
