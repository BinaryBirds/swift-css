//
//  MediaBuilder.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 09..
//

//@TODO: rename to RuleBuilder
@resultBuilder
enum MediaBuilder {
    static func buildBlock(_ components: Media...) -> [Media] {
        components
    }
}
