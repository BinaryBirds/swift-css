//
//  Selector+Modifiers.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public extension Selector {

    func pseudo(_ pseudo: Pseudo) -> Selector {
        Selector(name: name, properties: properties, pseudo: pseudo.value)
    }
}
