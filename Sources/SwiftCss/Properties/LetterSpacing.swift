//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Increases or decreases the space between characters in a text
func LetterSpacing(_ value: String) -> Property {
    Property(name: "letter-spacing", value: value)
}
