//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Sets the color of the top border
func BorderTopColor(_ value: CSSColorValue) -> Property {
    Property(name: "border-top-color", value: value.rawValue)
}

func BorderTopColor(_ value: CSSColor) -> Property {
    BorderTopColor(.color(value))
}
