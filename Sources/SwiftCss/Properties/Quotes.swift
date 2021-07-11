//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Sets the type of quotation marks for embedded quotations
func Quotes(_ value: String) -> Property {
    Property(name: "quotes", value: value)
}
