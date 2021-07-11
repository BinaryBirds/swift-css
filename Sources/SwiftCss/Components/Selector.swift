//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 09..
//

import Foundation

/// https://www.w3schools.com/cssref/css_selectors.asp
struct Selector: CSSRepresentable {
    var name: String
    var properties: [Property]
    var pseudo: String? = nil
    
    var css: String {
        var suffix = ""
        if let pseudo = pseudo {
            suffix = pseudo
        }
        return name + suffix + " {\n" + properties.map(\.css).joined() + "}\n"
    }
    
    init(name: String, properties: [Property], pseudo: String? = nil) {
        self.name = name
        self.properties = properties
        self.pseudo = pseudo
    }

    init(_ name: String, @PropertyBuilder _ builder: () -> [Property]) {
        self.name = name
        self.properties = builder()
    }
}
