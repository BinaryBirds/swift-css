//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies the initial length of a flexible item
func FlexBasis(_ value: String) -> Property {
    Property(name: "flex-basis", value: value)
}
