//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Sets the color of the right border
func BorderRightColor(_ value: CSSColorValue) -> Property {
    Property(name: "border-right-color", value: value.rawValue)
}

func BorderRightColor(_ value: CSSColor) -> Property {
    BorderRightColor(.color(value))
}
