//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//


/// Gives a hint to the browser about what aspects of an image are most important to preserve when the image is scaled
func ImageRendering(_ value: String) -> Property {
    Property(name: "image-rendering", value: value)
}
