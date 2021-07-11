//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Sets the right padding of an element
func PaddingRight(_ value: String) -> Property {
    Property(name: "padding-right", value: value)
}

func PaddingRight(_ value: PaddingValue = .length(.zero)) -> Property {
    PaddingRight(value.rawValue)
}

func PaddingRight(_ value: Unit = .zero) -> Property {
    PaddingRight(.length(value))
}
