//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//


/// Controls the usage of alternate glyphs for East Asian scripts (e.g Japanese and Chinese)
func FontVariantEastAsian(_ value: String) -> Property {
    Property(name: "font-variant-east-asian", value: value)
}
