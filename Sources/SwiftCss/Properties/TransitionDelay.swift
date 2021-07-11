//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Specifies when the transition effect will start
func TransitionDelay(_ value: String) -> Property {
    Property(name: "transition-delay", value: value)
}
