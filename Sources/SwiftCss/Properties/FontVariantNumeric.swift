//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//


/// Controls the usage of alternate glyphs for numbers, fractions, and ordinal markers
func FontVariantNumeric(_ value: String) -> Property {
    Property(name: "font-variant-numeric", value: value)
}
