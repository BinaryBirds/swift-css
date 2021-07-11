//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Increases or decreases the space between words in a text
func WordSpacing(_ value: String) -> Property {
    Property(name: "word-spacing", value: value)
}
