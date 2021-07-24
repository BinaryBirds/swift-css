//
//  Selector+Types.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func Root(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Selector(":root", builder)
}

public func All(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Selector("*", builder)
}

public func Element(_ name: HTMLElement, @PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Selector(name.rawValue, builder)
}

public func Id(_ name: String, @PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Selector("#" + name, builder)
}

public func Class(_ name: String, @PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Selector("." + name, builder)
}
