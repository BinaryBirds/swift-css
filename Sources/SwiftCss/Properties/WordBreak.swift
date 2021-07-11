//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Specifies how words should break when reaching the end of a line
func WordBreak(_ value: String) -> Property {
    Property(name: "word-break", value: value)
}
