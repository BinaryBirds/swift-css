//
//  Property.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 09..
//

/// https://www.w3schools.com/cssref/
public struct Property: CSSRepresentable {
    var name: String
    var value: String
    var isImportant: Bool = false
    
    var css: String {
        "\t" + name + ": " + value + (isImportant ? " !important" : "") + ";\n"
    }
    
    public func important() -> Property {
        guard !isImportant else {
            return self
        }
        return Property(name: name, value: value, isImportant: true)
    }
}

