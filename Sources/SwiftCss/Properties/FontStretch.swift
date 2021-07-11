//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Selects a normal, condensed, or expanded face from a font family
func FontStretch(_ value: String) -> Property {
    Property(name: "font-stretch", value: value)
}
