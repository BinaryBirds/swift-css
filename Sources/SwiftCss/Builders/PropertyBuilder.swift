//
//  PropertyBuilder.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 09..
//

@resultBuilder
public enum PropertyBuilder {
    public static func buildBlock(_ components: Property...) -> [Property] {
        components
    }
    
    public static func buildBlock(_ components: [Property]) -> [Property] {
        components
    }
    
    public static func buildBlock(_ components: [Property]...) -> [Property] {
        components.flatMap { $0 }
    }

    public static func buildEither(first component: [Property]) -> [Property] {
        component
    }

    public static func buildEither(second component: [Property]) -> [Property] {
        component
    }

    public static func buildOptional(_ component: [Property]?) -> [Property] {
        component ?? []
    }

    public static func buildExpression(_ expression: Property) -> [Property] {
        [expression]
    }

    public static func buildExpression(_ expression: [Property]) -> [Property] {
        expression
    }

    public static func buildArray(_ components: [[Property]]) -> [Property] {
        components.flatMap { $0 }
    }
}
