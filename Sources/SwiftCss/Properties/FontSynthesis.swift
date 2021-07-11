//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Controls which missing typefaces (bold or italic) may be synthesized by the browser
func FontSynthesis(_ value: String) -> Property {
    Property(name: "font-synthesis", value: value)
}
