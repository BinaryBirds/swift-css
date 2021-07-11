//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies the justification method used when text-align is "justify"
func TextJustify(_ value: String) -> Property {
    Property(name: "text-justify", value: value)
}
