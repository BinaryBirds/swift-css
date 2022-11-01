//
//  SelectorBuilder.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 09..
//

@resultBuilder
public enum SelectorBuilder {
    public static func buildBlock(_ components: Selector...) -> [Selector] {
        components
    }

    public static func buildBlock(_ components: [Selector]) -> [Selector] {
        components
    }

    public static func buildBlock(_ components: [Selector]...) -> [Selector] {
        components.flatMap { $0 }
    }

    public static func buildEither(first component: [Selector]) -> [Selector] {
        component
    }

    public static func buildEither(second component: [Selector]) -> [Selector] {
        component
    }

    public static func buildOptional(_ component: [Selector]?) -> [Selector] {
        component ?? []
    }

    public static func buildExpression(_ expression: Selector) -> [Selector] {
        [expression]
    }

    public static func buildExpression(_ expression: [Selector]) -> [Selector] {
        expression
    }

    public static func buildArray(_ components: [[Selector]]) -> [Selector] {
        components.flatMap { $0 }
    }
}
