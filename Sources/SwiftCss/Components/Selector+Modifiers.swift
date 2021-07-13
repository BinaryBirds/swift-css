//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

extension Selector {

    func pseudo(_ pseudo: Pseudo) -> Selector {
        Selector(name: name, properties: properties, pseudo: pseudo.value)
    }
}
