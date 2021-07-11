//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Specifies how an element's content should blend with its direct parent background
func MixBlendMode(_ value: String) -> Property {
    Property(name: "mix-blend-mode", value: value)
}
