//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//


/// Specifies whether or not the browser may break lines within words in order to prevent overflow (when a string is too long to fit its containing box)
func OverflowWrap(_ value: String) -> Property {
    Property(name: "overflow-wrap", value: value)
}
