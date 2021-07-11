//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies how auto-placed items are inserted in the grid
func GridAutoFlow(_ value: String) -> Property {
    Property(name: "grid-auto-flow", value: value)
}
