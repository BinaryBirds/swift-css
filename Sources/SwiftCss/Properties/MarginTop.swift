//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Sets the top margin of an element
func MarginTop(_ value: String) -> Property {
    Property(name: "margin-top", value: value)
}

func MarginTop(_ value: MarginValue = .length(.zero)) -> Property {
    MarginTop(value.rawValue)
}

func MarginTop(_ value: Unit = .zero) -> Property {
    MarginTop(.length(value))
}


