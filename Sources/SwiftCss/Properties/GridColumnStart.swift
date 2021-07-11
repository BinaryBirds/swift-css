//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies where to start the grid item
func GridColumnStart(_ value: String) -> Property {
    Property(name: "grid-column-start", value: value)
}
