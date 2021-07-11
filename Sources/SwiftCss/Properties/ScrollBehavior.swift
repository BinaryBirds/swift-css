//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Specifies whether to smoothly animate the scroll position in a scrollable box, instead of a straight jump
func ScrollBehavior(_ value: String) -> Property {
    Property(name: "scroll-behavior", value: value)
}
