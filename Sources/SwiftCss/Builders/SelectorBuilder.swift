//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 09..
//

import Foundation

@resultBuilder
enum SelectorBuilder {
    static func buildBlock(_ components: Selector...) -> [Selector] {
        components
    }
}

