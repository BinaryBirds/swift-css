//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Sets the color of the left border
func BorderLeftColor(_ value: CSSColorValue) -> Property {
    Property(name: "border-left-color", value: value.rawValue)
}

func BorderLeftColor(_ value: CSSColor) -> Property {
    BorderLeftColor(.color(value))
}
