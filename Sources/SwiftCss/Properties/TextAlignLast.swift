//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//


/// Describes how the last line of a block or a line right before a forced line break is aligned when text-align is "justify"
func TextAlignLast(_ value: String) -> Property {
    Property(name: "text-align-last", value: value)
}
