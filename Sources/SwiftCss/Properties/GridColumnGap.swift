//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies the size of the gap between columns
func GridColumnGap(_ value: String) -> Property {
    Property(name: "grid-column-gap", value: value)
}
