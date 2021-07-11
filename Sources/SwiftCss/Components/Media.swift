//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 09..
//

import Foundation

struct Media: CSSRepresentable {
    
    var query: String?
    var selectors: [Selector]

    init(_ query: String? = nil, @SelectorBuilder _ builder: () -> [Selector]) {
        self.query = query
        self.selectors = builder()
    }

//    struct Query: OptionSet {
//        let rawValue: Int
//
//        static let xs         = Query(rawValue: 1 << 0) // 0-599
//        static let s          = Query(rawValue: 1 << 1) // 600-899
//        static let normal     = Query(rawValue: 1 << 2) // 900-1199
//        static let l          = Query(rawValue: 1 << 3) // 1200-1799
//        static let xl         = Query(rawValue: 1 << 4) // 1800+
//        static let dark       = Query(rawValue: 1 << 5) // dark mode
//        static let standalone = Query(rawValue: 1 << 6) // standalone app
//    }

    
    var css: String {
        let css = selectors.map(\.css).joined()
        guard let query = query else {
            return css
        }
        return "@media " + query + " {\n\t" + css.split(separator: "\n").joined(separator: "\n\t") + "\n}\n"
    }
}
