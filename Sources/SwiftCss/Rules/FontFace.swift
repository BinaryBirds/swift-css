//
//  FontFace.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 24..
//

struct FontFace: Rule {

    var properties: [Property]

    init(@PropertyBuilder _ builder: () -> [Property]) {
        self.properties = builder()
    }
    
    var css: String {
        let value = properties.map(\.css).joined()
        return "@font-face {\n\t" + value.split(separator: "\n").joined(separator: "\n\t") + "\n}\n"
    }
}
