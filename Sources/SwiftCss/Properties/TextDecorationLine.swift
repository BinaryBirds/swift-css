//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies the type of line in a text-decoration
func TextDecorationLine(_ value: String) -> Property {
    Property(name: "text-decoration-line", value: value)
}
