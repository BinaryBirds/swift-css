//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


/// Controls the usage of language-specific glyphs in a typeface
func FontLanguageOverride(_ value: String) -> Property {
    Property(name: "font-language-override", value: value)
}
