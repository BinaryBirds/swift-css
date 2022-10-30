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
}
