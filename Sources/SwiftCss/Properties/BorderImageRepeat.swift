//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Specifies whether the border image should be repeated, rounded or stretched
func BorderImageRepeat(_ value: String) -> Property {
    Property(name: "border-image-repeat", value: value)
}
