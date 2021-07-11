//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Controls the usage of alternate glyphs of smaller size positioned as superscript or subscript regarding the baseline of the font
func FontVariantPosition(_ value: String) -> Property {
    Property(name: "font-variant-position", value: value)
}
