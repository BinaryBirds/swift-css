//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Specifies whether the flexible items should wrap or not
func FlexWrap(_ value: String) -> Property {
    Property(name: "flex-wrap", value: value)
}
