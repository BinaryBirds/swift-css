//
//  Selector+Types.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

func Root(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Selector(":root", builder)
}

func All(@PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Selector("*", builder)
}

func Element(_ name: HTMLElement, @PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Selector(name.rawValue, builder)
}

func Id(_ name: String, @PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Selector("#" + name, builder)
}

func Class(_ name: String, @PropertyBuilder _ builder: () -> [Property]) -> Selector {
    Selector("." + name, builder)
}
