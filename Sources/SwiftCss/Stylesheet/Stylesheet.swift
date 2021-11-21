//
//  Stylesheet.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 09..
//

public struct Stylesheet {
    let rules: [Rule]

    public init(@RuleBuilder _ builder: () -> [Rule]) {
        self.rules = builder()
    }
}
