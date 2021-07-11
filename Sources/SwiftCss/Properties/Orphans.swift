//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Sets the minimum number of lines that must be left at the bottom of a page when a page break occurs inside an element
func Orphans(_ value: String) -> Property {
    Property(name: "orphans", value: value)
}
