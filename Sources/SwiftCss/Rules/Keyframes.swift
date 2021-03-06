//
//  Keyframes.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 24..
//

public struct Keyframes: Rule {
    
    var name: String
    var selectors: [Selector]

    public init(_ name: String, @SelectorBuilder _ builder: () -> [Selector]) {
        self.name = name
        self.selectors = builder()
    }
}
