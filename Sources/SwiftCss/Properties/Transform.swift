//
//  Transform.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TransformValue {
    /// Defines that there should be no transformation    Play it »
    case none
    /// Defines a 2D transformation, using a matrix of six values    Play it »
    case matrix(Double,Double,Double,Double,Double,Double)
    /// Defines a 3D transformation, using a 4x4 matrix of 16 values
    case matrix3d(Double,Double,Double,Double,Double,Double,Double,Double,Double,Double,Double,Double,Double,Double,Double,Double)
    /// Defines a 2D translation    Play it »
    case translate(Double,Double)
    ///  Defines a 3D translation
    case translate3d(Double,Double,Double)
    /// Defines a translation, using only the value for the X-axis    Play it »
    case translateX(Double)
    /// Defines a translation, using only the value for the Y-axis    Play it »
    case translateY(Double)
    /// Defines a 3D translation, using only the value for the Z-axis
    case translateZ(Double)
    /// Defines a 2D scale transformation    Play it »
    case scale(Double,Double)
    /// Defines a 3D scale transformation
    case scale3d(Double,Double,Double)
    /// Defines a scale transformation by giving a value for the X-axis    Play it »
    case scaleX(Double)
    /// Defines a scale transformation by giving a value for the Y-axis    Play it »
    case scaleY(Double)
    /// Defines a 3D scale transformation by giving a value for the Z-axis
    case scaleZ(Double)
    /// Defines a 2D rotation, the angle is specified in the parameter    Play it »
    case rotate(Double)
    /// Defines a 3D rotation
    case rotate3d(Double,Double,Double,Double)
    /// Defines a 3D rotation along the X-axis    Play it »
    case rotateX(Double)
    /// Defines a 3D rotation along the Y-axis    Play it »
    case rotateY(Double)
    /// Defines a 3D rotation along the Z-axis    Play it »
    case rotateZ(Double)
    /// Defines a 2D skew transformation along the X- and the Y-axis    Play it »
    case skew(Double,Double)
    /// Defines a 2D skew transformation along the X-axis    Play it »
    case skewX(Double)
    /// Defines a 2D skew transformation along the Y-axis    Play it »
    case skewY(Double)
    /// Defines a perspective view for a 3D transformed element
    case perspective(Double)
    /// Sets this property to its default value. Read about initial
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
    
    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case let .matrix(m1,m2,m3,m4,m5,m6):
            return "matrix(" + [m1,m2,m3,m4,m5,m6].map { String($0) }.joined(separator: ",") + ")"
        case let .matrix3d(m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16):
            return "matrix3d(" + [m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16].map { String($0) }.joined(separator: ",") + ")"
        case let .translate(x,y):
            return "translate(" + [x,y].map { String($0) }.joined(separator: ",") + ")"
        case let .translate3d(x,y,z):
            return "translate3d(" + [x,y,z].map { String($0) }.joined(separator: ",") + ")"
        case let .translateX(value):
            return "translateX(\(value))"
        case let .translateY(value):
            return "translateY(\(value))"
        case let .translateZ(value):
            return "translateZ(\(value))"
        case let .scale(x,y):
            return "scale(" + [x,y].map { String($0) }.joined(separator: ",") + ")"
        case let .scale3d(x,y,z):
            return "scale3d(" + [x,y,z].map { String($0) }.joined(separator: ",") + ")"
        case let .scaleX(value):
            return "scaleX(\(value))"
        case let .scaleY(value):
            return "scaleY(\(value))"
        case let .scaleZ(value):
            return "scaleZ(\(value))"
        case let .rotate(x):
            return "rotate(\(x)deg)"
        case let .rotate3d(x,y,z,a):
            return "rotate3d(" + [x,y,z,a].map { String($0) }.joined(separator: ",") + "deg)"
        case let .rotateX(value):
            return "rotateX(\(value)deg)"
        case let .rotateY(value):
            return "rotateY(\(value)deg)"
        case let .rotateZ(value):
            return "rotateZ(\(value)deg)"
        case let .skew(x,y):
            return "skew(" + [x,y].map { String($0) + "deg" }.joined(separator: ",") + ")"
        case let .skewX(value):
            return "skewX(\(value)deg)"
        case let .skewY(value):
            return "skewY(\(value)deg)"
        case let .perspective(value):
            return "perspective(\(value))"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

func Transform(_ value: String) -> Property {
    Property(name: "transform", value: value)
}

/// Applies a 2D or 3D transformation to an element
public func Transform(_ value: TransformValue) -> Property {
    Transform(value.rawValue)
}
