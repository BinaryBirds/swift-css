//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Sets the width of the bottom border
func BorderBottomWidth(_ value: BorderWidthValue = .medium) -> Property {
    Property(name: "border-bottom-width", value: value.rawValue)
}

func BorderBottomWidth(_ value: Unit) -> Property {
    BorderBottomWidth(.length(value))
}
