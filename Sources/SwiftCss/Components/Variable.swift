//
//  Var.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 24..
//

/// Creates a new CSS variable with the given name and value
public func Variable(_ name: String, _ value: String) -> Property {
    Property(name: "--" + name, value: value)
}

public extension String {
    var `variable`: String {
        "var(--" + self + ")"
    }
}
