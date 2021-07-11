//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Specifies how much the item will grow relative to the rest
func FlexGrow(_ value: String) -> Property {
    Property(name: "flex-grow", value: value)
}
