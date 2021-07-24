//
//  Charset.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 24..
//

/// Specifies the character encoding to use
struct Charset: Rule {
    var name: String
    
    /// @charset "UTF-8";
    var css: String {
        #"@charset ""# + name + #"";"#
    }
}
