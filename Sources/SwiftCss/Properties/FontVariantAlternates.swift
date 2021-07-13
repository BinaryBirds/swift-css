//
//  FontVariantAlternates.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontVariantAlternatesValue {
    case normal
    case stylistic(String)
    case historicalForms
    case styleset(String)
    case characterVariant(String)
    case swash(String)
    case cswh(String)
    case ornaments(String)
    case annotation(String)
    case initial
    case inherit
    case unset
    
    var rawValue: String {
        switch self {
        case .normal:
            return "normal"
        case let .stylistic(value):
            return "salt \(value)"
        case .historicalForms:
            return "hist"
        case let .styleset(value):
            return "ss\(value)"
        case let .characterVariant(value):
            return "cv\(value)"
        case let .swash(value):
            return "swsh \(value)"
        case let .cswh(value):
            return "cswh \(value)"
        case let .ornaments(value):
            return "ornm \(value)"
        case let .annotation(value):
            return "nalt \(value)"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        case .unset:
            return "unset"
        }
    }
}

func FontVariantAlternates(_ value: String) -> Property {
    Property(name: "font-variant-alternates", value: value)
}

/// Controls the usage of alternate glyphs associated to alternative names defined in @font-feature-values
public func FontVariantAlternates(_ value: FontVariantAlternatesValue = .normal) -> Property {
    FontVariantAlternates(value.rawValue)
}
