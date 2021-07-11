//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation



/// Increases or decreases the value of one or more CSS counters
func CounterIncrement(_ value: String) -> Property {
    Property(name: "counter-increment", value: value)
}
