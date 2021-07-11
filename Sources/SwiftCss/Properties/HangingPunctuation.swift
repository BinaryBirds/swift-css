//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies whether a punctuation character may be placed outside the line box
func HangingPunctuation(_ value: String) -> Property {
    Property(name: "hanging-punctuation", value: value)
}
