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
                result += #"@charset ""# + charset.name + #"";"#
            case let value as FontFace:
                print("ff")
                //    public var css: String {
                //        let value = properties.map(\.css).joined()
                //        return "@font-face {\n\t" + value.split(separator: "\n").joined(separator: "\n\t") + "\n}\n"
                //    }
            /// @import "mobstyle.css" screen and (max-width: 768px);
            case let value as Import:
                print("import")
                
            //    public var css: String {
            //        "@import " + name + ";"
            //    }
            case let keyframes as Keyframes:
                print("keyframes")
                //    public var css: String {
                //        let value = selectors.map(\.css).joined()
                //        return "@keyframes " + name + " {\n\t" + value.split(separator: "\n").joined(separator: "\n\t") + "\n}\n"
                //    }

            case let media as Media:
                print("\(media.query ?? "") media")
                //    public var css: String {
                //        let css = selectors.map(\.css).joined()
                //        guard let query = query else {
                //            return css
                //        }
                //        return "@media " + query + " {\n\t" + css.split(separator: "\n").joined(separator: "\n\t") + "\n}\n"
                //    }
            default:
                fatalError("unknown rule object")
            }
        }
        return ""
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
