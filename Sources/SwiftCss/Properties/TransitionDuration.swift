//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies how many seconds or milliseconds a transition effect takes to complete
func TransitionDuration(_ value: String) -> Property {
    Property(name: "transition-duration", value: value)
}
