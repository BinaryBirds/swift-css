//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Specifies the background color of an element
func BackgroundColor(_ value: CSSColorValue = .transparent) -> Property {
    Property(name: "background-color", value: value.rawValue)
}

func BackgroundColor(_ value: CSSColor) -> Property {
    BackgroundColor(.color(value))
}
