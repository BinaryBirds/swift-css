//
//  Media.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 09..
//

public struct Media: Rule {

    public enum Query: String {
        /// 0-599px
        case xs = "screen and (max-width: 599px)"
        /// 600-899px
        case s = "screen and (min-width: 600px)"
        /// 900-1199px
        case normal = "screen and (min-width: 900px)"
        /// 1200-1799px
        case l = "screen and (min-width: 1200px)"
        /// 1800+px
        case xl = "screen and (min-width: 1800px)"
        /// dark mode
        case dark = "screen and (prefers-color-scheme: dark)"
        /// standalone app
        case standalone = "screen and (display-mode: standalone)"
    }

    var query: String?
    var selectors: [Selector]

    public init(_ query: String? = nil, @SelectorBuilder _ builder: () -> [Selector]) {
        self.query = query
        self.selectors = builder()
    }
    
    public init(_ query: Query, @SelectorBuilder _ builder: () -> [Selector]) {
        self.init(query.rawValue, builder)
    }    

    public var css: String {
        let css = selectors.map(\.css).joined()
        guard let query = query else {
            return css
        }
        return "@media " + query + " {\n\t" + css.split(separator: "\n").joined(separator: "\n\t") + "\n}\n"
    }
}
