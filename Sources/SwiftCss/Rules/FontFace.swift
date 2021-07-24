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
    
    public var css: String {
        let value = properties.map(\.css).joined()
        return "@font-face {\n\t" + value.split(separator: "\n").joined(separator: "\n\t") + "\n}\n"
    }
}
