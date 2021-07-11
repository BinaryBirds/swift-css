//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies how nested elements are rendered in 3D space
func TransformStyle(_ value: String) -> Property {
    Property(name: "transform-style", value: value)
}
