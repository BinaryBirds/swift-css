//
//  File.swift
//
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

enum DisplayValue: String {
    /// Displays an element as an inline element (like <span>). Any height and width properties will have no effect    Play it »
    case inline
    /// Displays an element as a block element (like <p>). It starts on a new line, and takes up the whole width    Play it »
    case block
    /// Makes the container disappear, making the child elements children of the element the next level up in the DOM    Play it »
    case contents
    /// Displays an element as a block-level flex container    Play it »
    case flex
    ///  Displays an element as a block-level grid container    Play it »
    case grid
    /// Displays an element as an inline-level block container. The element itself is formatted as an inline element, but you can apply height and width values    Play it »
    case inlineBlock = "inline-block"
    /// Displays an element as an inline-level flex container    Play it »
    case inlineFlex = "inline-flex"
    /// Displays an element as an inline-level grid container    Play it »
    case inlineGrid = "inline-grid"
    /// The element is displayed as an inline-level table    Play it »
    case inlineTable = "inline-table"
    /// Let the element behave like a <li> element    Play it »
    case listItem = "list-item"
    /// Displays an element as either block or inline, depending on context    Play it »
    case runIn = "run-in"
    /// Let the element behave like a <table> element    Play it »
    case table
    /// Let the element behave like a <caption> element    Play it »
    case tableCaption = "table-caption"
    /// Let the element behave like a <colgroup> element    Play it »
    case tableColumnGroup = "table-column-group"
    /// Let the element behave like a <thead> element    Play it »
    case tableHeaderGroup = "table-header-group"
    /// Let the element behave like a <tfoot> element    Play it »
    case tableFooterGroup = "table-footer-group"
    /// Let the element behave like a <tbody> element    Play it »
    case tableRowGroup = "table-row-group"
    /// Let the element behave like a <td> element    Play it »
    case tableCell = "table-cell"
    /// Let the element behave like a <col> element    Play it »
    case tableColumn = "table-column"
    /// Let the element behave like a <tr> element    Play it »
    case tableRow = "table-row"
    /// The element is completely removed    Play it »
    case none
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

/// Specifies how a certain HTML element should be displayed
func Display(_ value: DisplayValue = .initial) -> Property {
    Property(name: "display", value: value.rawValue)
}
