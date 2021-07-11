//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Sets how to split words to improve the layout of paragraphs
func Hyphens(_ value: String) -> Property {
    Property(name: "hyphens", value: value)
}
