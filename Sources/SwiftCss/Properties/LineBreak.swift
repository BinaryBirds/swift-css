//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

enum LineBreakValue: String {
    
    case auto
    case loose
    case normal
    case strict
    case anywhere
    case inherit
    case initial
    case revert
    case unset
}

func LineBreak(_ value: String) -> Property {
    Property(name: "line-break", value: value)
}

/// Specifies how/if to break lines
func LineBreak(_ value: LineBreakValue = .auto) -> Property {
    LineBreak(value.rawValue)
}
