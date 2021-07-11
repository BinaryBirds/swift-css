//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies the size of the rows in a grid layout
func GridTemplateRows(_ value: String) -> Property {
    Property(name: "grid-template-rows", value: value)
}
