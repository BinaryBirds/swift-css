//
//  Keyframes.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 24..
//

struct Keyframes: Rule {
    
    var name: String
    var selectors: [Selector]

    init(_ name: String, @SelectorBuilder _ builder: () -> [Selector]) {
        self.name = name
        self.selectors = builder()
    }
    
    var css: String {
        let value = selectors.map(\.css).joined()
        return "@keyframes " + name + " {\n\t" + value.split(separator: "\n").joined(separator: "\n\t") + "\n}\n"
    }
}
