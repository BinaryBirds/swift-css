//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


enum ColumnSpanValue: String {
    /// Default value. The element should span across one column    Play it »
    case none
    /// The element should span across all columns    Play it »
    case all
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}
/// Specifies how many columns an element should span across
func ColumnSpan(_ value: ColumnSpanValue = .none) -> Property {
    Property(name: "column-span", value: value.rawValue)
}
