//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Used together with the direction property to set or return whether the text should be overridden to support multiple languages in the same document
func UnicodeBidi(_ value: String) -> Property {
    Property(name: "unicode-bidi", value: value)
}
