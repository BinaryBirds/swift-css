//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Sets the left margin of an element
func MarginLeft(_ value: String) -> Property {
    Property(name: "margin-left", value: value)
}

func MarginLeft(_ value: MarginValue = .length(.zero)) -> Property {
    MarginLeft(value.rawValue)
}

func MarginLeft(_ value: Unit = .zero) -> Property {
    MarginLeft(.length(value))
}
