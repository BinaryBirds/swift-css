//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Defines effects (e.g. blurring or color shifting) on an element before the element is displayed
func Filter(_ value: String) -> Property {
    Property(name: "filter", value: value)
}
