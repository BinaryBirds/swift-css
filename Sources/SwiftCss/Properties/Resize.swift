//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Defines if (and how) an element is resizable by the user
func Resize(_ value: String) -> Property {
    Property(name: "resize", value: value)
}
