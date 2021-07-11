//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Preserves the readability of text when font fallback occurs
func FontSizeAdjust(_ value: String) -> Property {
    Property(name: "font-size-adjust", value: value)
}
