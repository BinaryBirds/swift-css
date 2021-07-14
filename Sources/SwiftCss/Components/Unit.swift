//
//  Unit.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum Unit {
    case zero

    /// centimeters
    case cm(Double)
    /// millimeters
    case mm(Double)
    /// inches (1in = 96px = 2.54cm)
    case `in`(Double)
    /// pixels (1px = 1/96th of 1in)
    case px(Double)
    /// points (1pt = 1/72 of 1in)
    case pt(Double)
    /// picas (1pc = 12 pt)
    case pc(Double)
    
    /// Relative to the font-size of the element (2em means 2 times the size of the current font)
    case em(Double)
    /// Relative to the x-height of the current font (rarely used)
    case ex(Double)
    /// Relative to the width of the "0" (zero)
    case ch(Double)
    /// Relative to font-size of the root element
    case rem(Double)
    /// Relative to 1% of the width of the viewport*
    case vw(Double)
    /// Relative to 1% of the height of the viewport*
    case vh(Double)
    /// Relative to 1% of viewport's* smaller dimension
    case vmin(Double)
    /// Relative to 1% of viewport's* larger dimension
    case vmax(Double)
    /// Relative to the parent element
    case percent(Double)
    
    var rawValue: String {
        switch self {
        case .zero:
            return "0"
        case .cm(let value):
            return "\(value)cm"
        case .mm(let value):
            return "\(value)mm"
        case .in(let value):
            return "\(value)in"
        case .px(let value):
            return "\(value)px"
        case .pt(let value):
            return "\(value)pt"
        case .pc(let value):
            return "\(value)pc"
        case .em(let value):
            return "\(value)em"
        case .ex(let value):
            return "\(value)ex"
        case .ch(let value):
            return "\(value)ch"
        case .rem(let value):
            return "\(value)rem"
        case .vw(let value):
            return "\(value)vw"
        case .vh(let value):
            return "\(value)vh"
        case .vmin(let value):
            return "\(value)vmin"
        case .vmax(let value):
            return "\(value)vmax"
        case .percent(let value):
            return "\(value)%"
        }
    }
}
//
//extension Int {
//    var px: Unit {
//        Unit.px(Double(self))
//    }
//}
//
//extension Double {
//    var px: Unit {
//        Unit.px(self)
//    }
//}
