//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Offsets an outline, and draws it beyond the border edge
func OutlineOffset(_ value: String) -> Property {
    Property(name: "outline-offset", value: value)
}
