//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

import Foundation

/// Allows control over advanced typographic features in OpenType fonts
func FontFeatureSettings(_ value: String) -> Property {
    Property(name: "font-feature-settings", value: value)
}
