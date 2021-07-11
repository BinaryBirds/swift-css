//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Specifies the size of the columns, and how many columns in a grid layout
func GridTemplateColumns(_ value: String) -> Property {
    Property(name: "grid-template-columns", value: value)
}
