//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Specifies how the item will shrink relative to the rest
func FlexShrink(_ value: String) -> Property {
    Property(name: "flex-shrink", value: value)
}
