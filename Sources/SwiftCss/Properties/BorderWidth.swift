//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Sets the width of the four borders
func BorderWidth(_ value: BorderWidthValue = .medium) -> Property {
    Property(name: "border-width", value: value.rawValue)
}

func BorderWidth(_ value: Unit) -> Property {
    BorderWidth(.length(value))
}
