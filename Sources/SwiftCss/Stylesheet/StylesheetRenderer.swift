//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 11. 21..
//

import Foundation

public struct StylesheetRenderer {
    
    private let newline: String
    private let singleSpace: String
    public let minify: Bool
    public let indent: Int
    
    public init(minify: Bool = false, indent: Int = 4) {
        self.minify = minify
        self.indent = minify ? 0 : indent
        self.newline = minify ? "" : "\n"
        self.singleSpace = minify ? "" : " "
    }
    
    public func render(_ stylesheet: Stylesheet) -> String {
        var result = ""
        for rule in stylesheet.rules {
            switch rule {
            /// @charset "UTF-8";
            case let charset as Charset:
                result += #"@charset ""# + charset.name + #"";"# + newline
            case let value as FontFace:
                let properties = value.properties.map { renderProperty($0) }.joined(separator: newline)
                result += "@font-face {" + newline + properties + newline + "}" + newline
            /// @import "mobstyle.css" screen and (max-width: 768px);
            case let value as Import:
                result += "@import " + value.name + ";" + newline
            case let keyframes as Keyframes:
                let selectors = keyframes.selectors.map { renderSelector($0) }.joined(separator: newline)
                result += "@keyframes " + keyframes.name + singleSpace + "{" + newline + selectors + newline + "}" + newline
            case let media as Media:
                let level = media.query != nil ? 1 : 0
                var selectors = media.selectors.map { renderSelector($0, level: level) }.joined(separator: newline)
                if let query = media.query {
                    print(query)
                    selectors = "@media " + query + singleSpace + "{" + newline + selectors + newline + "}"
                }
                result += selectors + newline
            default:
                fatalError("unknown rule object")
            }
        }
        return result
    }
    
    // MARK: - helpers
    
    private func renderProperty(_ property: Property, level: Int = 0) -> String {
        let spaces = String(repeating: " ", count: level * indent)
        return spaces + property.name + ":" + singleSpace + property.value + (property.isImportant ? " !important" : "")
    }
    
    private func renderSelector(_ selector: Selector, level: Int = 0) -> String {
        let spaces = String(repeating: " ", count: level * indent)
        var suffix = ""
        if let pseudo = selector.pseudo {
            suffix = pseudo
        }
        let properties = selector.properties.map { renderProperty($0, level: level + 1) }.joined(separator: ";" + newline)
        return spaces + selector.name + suffix + singleSpace + "{" + newline + properties + newline + spaces + "}"
    }
}

//@charset "UTF-8";:root{margin:8.0px 8px;padding:8.0px 8.0px}@media screen and (prefers-color-scheme: dark){*{margin:8.0px 8.0px}}
//@charset "UTF-8";:root{margin:8px 8px;padding:8px 8px}@media screen and (prefers-color-scheme:dark){*{margin:8px 8px}}
