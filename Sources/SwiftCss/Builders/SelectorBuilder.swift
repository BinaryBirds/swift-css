//
//  SelectorBuilder.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 09..
//

@resultBuilder
public enum SelectorBuilder {
    static func buildBlock(_ components: Selector...) -> [Selector] {
        components
    }
}

