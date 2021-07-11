//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies the indentation of the first line in a text-block
func TextIndent(_ value: String) -> Property {
    Property(name: "text-indent", value: value)
}
