//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Specifies whether or not a text should be displayed in a small-caps font
func FontVariant(_ value: String) -> Property {
    Property(name: "font-variant", value: value)
}
