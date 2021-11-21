//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 11. 21..
//

import Foundation

public struct StylesheetRenderer {
    
    private let newline: String
    public let minify: Bool
    public let indent: Int
    
    public init(minify: Bool = false, indent: Int = 4) {
        self.minify = minify
        self.indent = minify ? 0 : indent
        self.newline = minify ? "" : "\n"
    }
    
    public func render(_ rules: [Rule]) -> String {
        var result = ""
        for rule in rules {
            switch rule {
            /// @charset "UTF-8";
            case let charset as Charset:
                result += #"@charset ""# + charset.name + #"";"# + newline
            case let value as FontFace:
                let properties = value.properties.map { renderProperty($0) }.joined(separator: newline)
                result += "@font-face {\n\t" + properties + "\n}\n"
            /// @import "mobstyle.css" screen and (max-width: 768px);
            case let value as Import:
                result += "@import " + value.name + ";" + newline
            case let keyframes as Keyframes:
                let selectors = keyframes.selectors.map { renderSelector($0) }.joined(separator: newline)
                result += "@keyframes " + keyframes.name + " {\n\t" + selectors + "\n}\n"
            case let media as Media:
                var selectors = media.selectors.map { renderSelector($0) }.joined(separator: newline)
                if let query = media.query {
                    selectors = "@media " + query + " {\n\t" + selectors + "\n}\n"
                }
                result += selectors
            default:
                fatalError("unknown rule object")
            }
        }
        return result
    }
    
    // MARK: - helpers
    
    private func renderProperty(_ property: Property) -> String {
        "\t" + property.name + ": " + property.value + (property.isImportant ? " !important" : "") + ";\n"
    }
    
    private func renderSelector(_ selector: Selector) -> String {
        var suffix = ""
        if let pseudo = selector.pseudo {
            suffix = pseudo
        }
        let properties = selector.properties.map { renderProperty($0) }.joined(separator: newline)
        return selector.name + suffix + " {\n" + properties + "}\n"
    }
}
