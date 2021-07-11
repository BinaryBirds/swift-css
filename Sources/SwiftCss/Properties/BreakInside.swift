//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation



enum BreakInsideValue: String {
    /// Default. Automatic page/column/region break inside the element
    case auto
    /// Avoid a page/column/region break inside the element
    case avoid
    /// Avoid a column-break inside the element
    case avoidColumn = "avoid-column"
    /// Avoid a page-break inside the element
    case avoidPage = "avoid-page"
    /// Avoid a region-break inside the element
    case avoidRegion = "avoid-region"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

/// Specifies whether or not a page-, column-, or region-break should occur inside the specified element
func BreakInside(_ value: BreakInsideValue = .auto) -> Property {
    Property(name: "break-inside", value: value.rawValue)
}
