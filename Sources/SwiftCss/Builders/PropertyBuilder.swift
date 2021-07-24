//
//  PropertyBuilder.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 09..
//

@resultBuilder
public enum PropertyBuilder {
    static func buildBlock(_ components: Property...) -> [Property] {
        components
    }
}
