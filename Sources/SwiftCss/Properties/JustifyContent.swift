//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Specifies the alignment between the items inside a flexible container when the items do not use all available space
func JustifyContent(_ value: String) -> Property {
    Property(name: "justify-content", value: value)
}
