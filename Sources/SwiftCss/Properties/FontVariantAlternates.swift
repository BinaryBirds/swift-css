//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//


/// Controls the usage of alternate glyphs associated to alternative names defined in @font-feature-values
func FontVariantAlternates(_ value: String) -> Property {
    Property(name: "font-variant-alternates", value: value)
}
