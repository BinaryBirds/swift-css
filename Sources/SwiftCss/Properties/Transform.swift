//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Applies a 2D or 3D transformation to an element
func Transform(_ value: String) -> Property {
    Property(name: "transform", value: value)
}
