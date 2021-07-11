//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation



/// Used with the :before and :after pseudo-elements, to insert generated content
func Content(_ value: String) -> Property {
    Property(name: "content", value: value)
}
