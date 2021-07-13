//
//  OverflowY.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

func OverflowY(_ value: String) -> Property {
    Property(name: "overflow-y", value: value)
}

/// Specifies whether or not to clip the top/bottom edges of the content, if it overflows the element's content area
public func OverflowY(_ value: OverflowValue = .visible) -> Property {
    OverflowY(value.rawValue)
}
