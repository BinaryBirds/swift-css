//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Allows you to change the position on transformed elements
func TransformOrigin(_ value: String) -> Property {
    Property(name: "transform-origin", value: value)
}
