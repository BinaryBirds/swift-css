//
//  ListStyleType.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

public enum ListStyleTypeValue: String {
    /// Default value. The marker is a filled circle    Play it »
    case disc
    /// The marker is traditional Armenian numbering    Play it »
    case armenian
    /// The marker is a circle    Play it »
    case circle
    /// The marker is plain ideographic numbers    Play it »
    case cjkIdeographic = "cjk-ideographic"
    /// The marker is a number    Play it »
    case decimal
    /// The marker is a number with leading zeros (01, 02, 03, etc.)    Play it »
    case decimalLeadingZero = "decimal-leading-zero"
    /// The marker is traditional Georgian numbering    Play it »
    case georgian
    /// The marker is traditional Hebrew numbering    Play it »
    case hebrew
    /// The marker is traditional Hiragana numbering    Play it »
    case hiragana
    /// The marker is traditional Hiragana iroha numbering    Play it »
    case hiraganaIroha = "hiragana-iroha"
    /// The marker is traditional Katakana numbering    Play it »
    case katakana
    /// The marker is traditional Katakana iroha numbering    Play it »
    case katakanaIroha = "katakana-iroha"
    /// The marker is lower-alpha (a, b, c, d, e, etc.)    Play it »
    case lowerAlpha = "lower-alpha"
    /// The marker is lower-greek    Play it »
    case lowerGreek = "lower-greek"
    /// The marker is lower-latin (a, b, c, d, e, etc.)    Play it »
    case lowerLatin = "lower-latin"
    /// The marker is lower-roman (i, ii, iii, iv, v, etc.)    Play it »
    case lowerRoman = "lower-roman"
    /// No marker is shown    Play it »
    case none
    /// The marker is a square    Play it »
    case square
    /// The marker is upper-alpha (A, B, C, D, E, etc.)     Play it »
    case upperAlpha = "upper-alpha"
    /// The marker is upper-greek    Play it »
    case upperGreek = "upper-greek"
    /// The marker is upper-latin (A, B, C, D, E, etc.)    Play it »
    case upperLatin = "upper-latin"
    /// The marker is upper-roman (I, II, III, IV, V, etc.)    Play it »
    case upperRoman = "upper-roman"
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

/// Specifies the type of list-item marker
func ListStyleType(_ value: String) -> Property {
    Property(name: "list-style-type", value: value)
}

public func ListStyleType(_ value: ListStyleTypeValue = .disc) -> Property {
    ListStyleType(value.rawValue)
}
