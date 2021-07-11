//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Sets the order of the flexible item, relative to the rest
func Order(_ value: String) -> Property {
    Property(name: "order", value: value)
}
