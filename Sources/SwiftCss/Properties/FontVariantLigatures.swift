//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//


/// Controls which ligatures and contextual forms are used in textual content of the elements it applies to
func FontVariantLigatures(_ value: String) -> Property {
    Property(name: "font-variant-ligatures", value: value)
}
