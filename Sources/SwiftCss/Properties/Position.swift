//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies the type of positioning method used for an element (static, relative, absolute or fixed)
func Position(_ value: String) -> Property {
    Property(name: "position", value: value)
}
