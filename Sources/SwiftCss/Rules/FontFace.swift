//
//  FontFace.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 24..
//

public struct FontFace: Rule {

    var properties: [Property]

    public init(@PropertyBuilder _ builder: () -> [Property]) {
        self.properties = builder()
    }
    
}
