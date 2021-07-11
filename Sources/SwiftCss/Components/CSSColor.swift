//
//  CSSColor.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 11..
//

import Foundation

public struct CSSColor: ExpressibleByStringLiteral {

    private var css: String
    
    init(raw: String) {
        css = raw
    }

//    init(hex: String) {
//        css = hex
//    }
    
    public init(stringLiteral value: StringLiteralType) {
        css = value
        /// check if length is valid (000, #000, cafe00, #cafe00)
        assert([3,4,6,7].contains(value.count), "Invalid hex string")
    }

    init(r: Int, g: Int, b: Int, a: Double? = nil) {
        css = "\(r),\(g),\(b)"
        if let a = a {
            css = "rgba(" + css + ", \(a))"
        }
        else {
            css = "rgb(" + css + ")"
        }
    }

    init(r: Double, g: Double, b: Double, a: Double? = nil) {
        css = "\(r)%,\(g)%,\(b)%"
        if let a = a {
            css = "rgba(" + css + ", \(a))"
        }
        else {
            css = "rgb(" + css + ")"
        }
    }
    
    init(h: Int, s: Int, l: Int, a: Double? = nil) {
        css = "\(h),\(s),\(l)"
        if let a = a {
            css = "hsla(" + css + ", \(a))"
        }
        else {
            css = "hsl(" + css + ")"
        }
    }

    init(h: Double, s: Double, l: Double, a: Double? = nil) {
        css = "\(h)%,\(s)%,\(l)%"
        if let a = a {
            css = "hsla(" + css + ", \(a))"
        }
        else {
            css = "hsl(" + css + ")"
        }
    }
    
    var rawValue: String {
        css
    }
}

