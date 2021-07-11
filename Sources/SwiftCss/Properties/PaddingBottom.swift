//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Sets the bottom padding of an element
func PaddingBottom(_ value: String) -> Property {
    Property(name: "padding-bottom", value: value)
}

func PaddingBottom(_ value: PaddingValue = .length(.zero)) -> Property {
    PaddingBottom(value.rawValue)
}

func PaddingBottom(_ value: Unit = .zero) -> Property {
    PaddingBottom(.length(value))
}
