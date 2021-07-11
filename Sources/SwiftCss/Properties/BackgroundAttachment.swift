//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

enum BackgroundAttachmentValue: String {
    /// The background image will scroll with the page. This is default
    case scroll
    /// The background image will not scroll with the page
    case fixed
    /// The background image will scroll with the element's contents
    case local
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

/// Sets whether a background image scrolls with the rest of the page, or is fixed
func BackgroundAttachment(_ value: BackgroundAttachmentValue = .scroll) -> Property {
    Property(name: "background-attachment", value: value.rawValue)
}
