//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Sets the width of the left border
func BorderLeftWidth(_ value: BorderWidthValue = .medium) -> Property {
    Property(name: "border-left-width", value: value.rawValue)
}

func BorderLeftWidth(_ value: Unit) -> Property {
    BorderLeftWidth(.length(value))
}
