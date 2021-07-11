//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Sets the width of the right border
func BorderRightWidth(_ value: BorderWidthValue = .medium) -> Property {
    Property(name: "border-right-width", value: value.rawValue)
}

func BorderRightWidth(_ value: Unit) -> Property {
    BorderRightWidth(.length(value))
}
