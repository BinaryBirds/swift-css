//
//  GridTemplateColumns.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum GridTemplateColumnsValue {
    /// Default value. Columns are created if needed
    case none
    /// The size of the columns is determined by the size of the container and on the size of the content of the items in the column
    case auto
    /// Sets the size of each column to depend on the largest item in the column
    case maxContent
    /// Sets the size of each column to depend on the smallest item in the column
    case minContent
    /// Sets the size of the columns, by using a legal length value.
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
    
    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .auto:
            return "auto"
        case .maxContent:
            return "max-content"
        case .minContent:
            return "min-content"
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

func GridTemplateColumns(_ value: String) -> Property {
    Property(name: "grid-template-columns", value: value)
}

/// Specifies the size of the columns, and how many columns in a grid layout
func GridTemplateColumns(_ value: GridTemplateColumnsValue = .none) -> Property {
    GridTemplateColumns(value.rawValue)
}
