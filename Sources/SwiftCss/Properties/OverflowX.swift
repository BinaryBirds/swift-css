//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies whether or not to clip the left/right edges of the content, if it overflows the element's content area
func OverflowX(_ value: String) -> Property {
    Property(name: "overflow-x", value: value)
}
