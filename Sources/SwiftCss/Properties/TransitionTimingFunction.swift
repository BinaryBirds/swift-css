//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies the speed curve of the transition effect
func TransitionTimingFunction(_ value: String) -> Property {
    Property(name: "transition-timing-function", value: value)
}
