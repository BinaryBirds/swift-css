//
//  Property.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 09..
//

/// https://www.w3schools.com/cssref/
public struct Property {
    public var name: String
    public var value: String
    var isImportant: Bool = false
    
    public init(name: String, value: String, isImportant: Bool = false) {
        self.name = name
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Property {
        guard !isImportant else {
            return self
        }
        return Property(name: name, value: value, isImportant: true)
    }
}

