//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies whether or not to display borders and background on empty cells in a table
func EmptyCells(_ value: String) -> Property {
    Property(name: "empty-cells", value: value)
}
