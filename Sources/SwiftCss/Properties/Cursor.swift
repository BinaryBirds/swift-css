//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation



enum CursorValue: String {
    /// The cursor indicates an alias of something is to be created    Play it »
    case alias
    /// The cursor indicates that something can be scrolled in any direction    Play it »
    case allScroll
    /// Default. The browser sets a cursor    Play it »
    case auto
    /// The cursor indicates that a cell (or set of cells) may be selected    Play it »
    case cell
    /// The cursor indicates that a context-menu is available    Play it »
    case contextMenu
    /// The cursor indicates that the column can be resized horizontally    Play it »
    case colResize
    /// The cursor indicates something is to be copied    Play it »
    case copy
    /// The cursor render as a crosshair    Play it »
    case crosshair
    /// The default cursor    Play it »
    case `default`
    /// The cursor indicates that an edge of a box is to be moved right (east)    Play it »
    case eResize
    /// Indicates a bidirectional resize cursor    Play it »
    case ewResize
    /// The cursor indicates that something can be grabbed    Play it »
    case grab
    /// The cursor indicates that something can be grabbed    Play it »
    case grabbing
    /// The cursor indicates that help is available    Play it »
    case help
    /// The cursor indicates something is to be moved    Play it »
    case move
    /// The cursor indicates that an edge of a box is to be moved up (north)    Play it »
    case nResize
    /// The cursor indicates that an edge of a box is to be moved up and right (north/east)    Play it »
    case neResize
    /// Indicates a bidirectional resize cursor    Play it »
    case neswResize
    /// Indicates a bidirectional resize cursor    Play it »
    case nsResize
    /// The cursor indicates that an edge of a box is to be moved up and left (north/west)    Play it »
    case nwResize
    /// Indicates a bidirectional resize cursor    Play it »
    case nwseResize
    /// The cursor indicates that the dragged item cannot be dropped here    Play it »
    case noDrop
    /// No cursor is rendered for the element    Play it »
    case none
    /// The cursor indicates that the requested action will not be executed    Play it »
    case notAllowed
    /// The cursor is a pointer and indicates a link    Play it »
    case pointer
    /// The cursor indicates that the program is busy (in progress)    Play it »
    case progress
    /// The cursor indicates that the row can be resized vertically    Play it »
    case rowResize
    /// The cursor indicates that an edge of a box is to be moved down (south)    Play it »
    case sResize
    /// The cursor indicates that an edge of a box is to be moved down and right (south/east)    Play it »
    case seResize
    /// The cursor indicates that an edge of a box is to be moved down and left (south/west)    Play it »
    case swResize
    /// The cursor indicates text that may be selected    Play it »
    case text
    /// A comma separated list of URLs to custom cursors. Note: Always specify a generic cursor at the end of the list, in case none of the URL-defined cursors can be used    Play it »
    // @TODO: add cursor url support
    //case URL(String)
    /// The cursor indicates vertical-text that may be selected    Play it »
    case verticalText
    /// The cursor indicates that an edge of a box is to be moved left (west)    Play it »
    case wResize
    /// The cursor indicates that the program is busy    Play it »
    case wait
    /// The cursor indicates that something can be zoomed in    Play it »
    case zoomIn
    /// The cursor indicates that something can be zoomed out    Play it »
    case zoomOut
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

/// Specifies the mouse cursor to be displayed when pointing over an element
func Cursor(_ value: CursorValue = .auto) -> Property {
    Property(name: "cursor", value: value.rawValue)
}
