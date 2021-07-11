//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies what should happen when text overflows the containing element
func TextOverflow(_ value: String) -> Property {
    Property(name: "text-overflow", value: value)
}
