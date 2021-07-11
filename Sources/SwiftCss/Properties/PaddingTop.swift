//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Sets the top padding of an element
func PaddingTop(_ value: String) -> Property {
    Property(name: "padding-top", value: value)
}

func PaddingTop(_ value: PaddingValue = .length(.zero)) -> Property {
    PaddingTop(value.rawValue)
}

func PaddingTop(_ value: Unit = .zero) -> Property {
    PaddingTop(.length(value))
}
