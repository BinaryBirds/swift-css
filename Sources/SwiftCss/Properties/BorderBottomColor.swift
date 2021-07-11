//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Sets the color of the bottom border
func BorderBottomColor(_ value: CSSColorValue) -> Property {
    Property(name: "border-bottom-color", value: value.rawValue)
}

func BorderBottomColor(_ value: CSSColor) -> Property {
    BorderBottomColor(.color(value))
}
