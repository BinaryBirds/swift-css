//
//  Import.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 24..
//

/// The @import rule allows you to import a style sheet into another style sheet.
///
/// The @import rule must be at the top of the document (but after any @charset declaration).
///
/// The @import rule also supports media queries, so you can allow the import to be media-dependent.
struct Import: Rule {

    var name: String
    
    /// @import "mobstyle.css" screen and (max-width: 768px);
    var css: String {
        "@import " + name + ";"
    }
}
