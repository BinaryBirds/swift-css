//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation



/// Specifies how to display columns and rows, using named grid items
func GridTemplateAreas(_ value: String) -> Property {
    Property(name: "grid-template-areas", value: value)
}
