//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Sets the left padding of an element
func PaddingLeft(_ value: String) -> Property {
    Property(name: "padding-left", value: value)
}

func PaddingLeft(_ value: PaddingValue = .length(.zero)) -> Property {
    PaddingLeft(value.rawValue)
}

func PaddingLeft(_ value: Unit = .zero) -> Property {
    PaddingLeft(.length(value))
}
