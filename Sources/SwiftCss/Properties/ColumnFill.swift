//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation


enum ColumnFillValue: String {
    /// Default value. Fills each column with about the same amount of content, but will not allow the columns to be taller than the height (so, columns might be shorter than the height as the browser distributes the content evenly horizontally)
    case balance
    /// Fills each column until it reaches the height, and do this until it runs out of content (so, this value will not necessarily fill all the columns nor fill them evenly)
    case auto
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

// @TODO: column unit support
/// Specifies how to fill columns, balanced or not
func ColumnFill(_ value: ColumnFillValue = .balance) -> Property {
    Property(name: "column-fill", value: value.rawValue)
}
