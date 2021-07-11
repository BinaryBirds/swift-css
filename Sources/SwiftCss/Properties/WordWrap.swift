//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Allows long, unbreakable words to be broken and wrap to the next line
func WordWrap(_ value: String) -> Property {
    Property(name: "word-wrap", value: value)
}
