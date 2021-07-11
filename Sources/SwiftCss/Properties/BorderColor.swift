//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Sets the color of the four borders
func BorderColor(_ value: CSSColorValue) -> Property {
    Property(name: "border-color", value: value.rawValue)
}

func BorderColor(_ value: CSSColor) -> Property {
    BorderColor(.color(value))
}
