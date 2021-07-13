//
//  GridColumn.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//




/// A shorthand property for the grid-column-start and the grid-column-end properties
func GridColumn(_ value: String) -> Property {
    Property(name: "grid-column", value: value)
}
