//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies whether lines of text are laid out horizontally or vertically
func WritingMode(_ value: String) -> Property {
    Property(name: "writing-mode", value: value)
}
