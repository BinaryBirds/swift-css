//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Creates or resets one or more CSS counters
func CounterReset(_ value: String) -> Property {
    Property(name: "counter-reset", value: value)
}
