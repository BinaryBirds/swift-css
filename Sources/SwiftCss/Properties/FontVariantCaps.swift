//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Controls the usage of alternate glyphs for capital letters
func FontVariantCaps(_ value: String) -> Property {
    Property(name: "font-variant-caps", value: value)
}
