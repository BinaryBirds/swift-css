//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Specifies how the contents of a replaced element should be fitted to the box established by its used height and width
func ObjectFit(_ value: String) -> Property {
    Property(name: "object-fit", value: value)
}
