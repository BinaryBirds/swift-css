//
//  UnicodeBidi.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum UnicodeBidiValue: String {
    /// The element does not open an additional level of embedding. This is default    
    case normal
    /// For inline elements, this value opens an additional level of embedding    
    case embed
    /// For inline elements, this creates an override. For block elements, this creates an override for inline-level descendants not within another block element    
    case bidiOverride = "bidi-override"
    /// The element is isolated from its siblings
    case isolate
    case isolateOverride = "isolate-override"
    case plaintext
    /// Sets this property to its default value.     
    case initial
    /// Inherits this property from its parent element. 
    case inherit
}


func UnicodeBidi(_ value: String) -> Property {
    Property(name: "unicode-bidi", value: value)
}

/// Used together with the direction property to set or return whether the text should be overridden to support multiple languages in the same document
public func UnicodeBidi(_ value: UnicodeBidiValue = .normal) -> Property {
    UnicodeBidi(value.rawValue)
}
