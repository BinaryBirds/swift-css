//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies whether a mask element is used as a luminance or an alpha mask
func MaskType(_ value: String) -> Property {
    Property(name: "mask-type", value: value)
}
