//
//  RuleBuilder.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 09..
//

@resultBuilder
public enum RuleBuilder {
    public static func buildBlock(_ components: Rule...) -> [Rule] {
        components
    }
    
    public static func buildBlock(_ components: [Rule]) -> [Rule] {
        components
    }
    
    public static func buildBlock(_ components: [Rule]...) -> [Rule] {
        components.flatMap { $0 }
    }

    public static func buildEither(first component: [Rule]) -> [Rule] {
        component
    }

    public static func buildEither(second component: [Rule]) -> [Rule] {
        component
    }

    public static func buildOptional(_ component: [Rule]?) -> [Rule] {
        component ?? []
    }

    public static func buildExpression(_ expression: Rule) -> [Rule] {
        [expression]
    }

    public static func buildExpression(_ expression: [Rule]) -> [Rule] {
        expression
    }

    public static func buildArray(_ components: [[Rule]]) -> [Rule] {
        components.flatMap { $0 }
    }
}
