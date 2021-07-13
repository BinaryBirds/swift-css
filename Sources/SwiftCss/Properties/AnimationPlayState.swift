//
//  AnimationPlayState.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum AnimationPlayStyleValue: String {
    /// Specifies that the animation is paused
    case paused
    /// Default value. Specifies that the animation is running
    case running
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

func AnimationPlayState(_ value: String) -> Property {
    Property(name: "animation-play-state", value: value)
}

/// Specifies whether the animation is running or paused
public func AnimationPlayState(_ value: AnimationPlayStyleValue = .running) -> Property {
    AnimationPlayState(value.rawValue)
}
