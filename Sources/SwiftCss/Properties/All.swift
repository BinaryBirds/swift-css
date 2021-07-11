//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

enum AllValue: String {
    /// Changes all the properties applied to the element or the element's parent to their initial value
    case initial
    /// Changes all the properties applied to the element or the element's parent to their parent value
    case inherit
    /// Changes all the properties applied to the element or the element's parent to their parent value if they are inheritable or to their initial value if not
    case unset
}

/// Resets all properties (except unicode-bidi and direction)
func All(_ value: AllValue) -> Property {
    Property(name: "all", value: value.rawValue)
}
