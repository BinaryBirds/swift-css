//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 11..
//

import XCTest
@testable import SwiftCss

final class SwiftCssTests: XCTestCase {
    
    func testExample() {
        let sel = buildCSS()
        print(sel.map(\.css).joined(separator: "\n"))
        XCTAssertTrue(true)
    }
}


@MediaBuilder func buildCSS() -> [Media] {
    Media {
        Element(.div) {
            BackgroundColor(.red)
            Color(.white)
            TextAlign("left")
        }
        .pseudo(.nthChild(2))

        Id("custom-identifier") {
            Background("#222")
            Color("cafe00")
            Color("#cafe00")
        }
        Class("custom-class") {
            Background("#333")
            Color(.red)
        }
        Selector("ul > li > a") {
            Background("black")
            Color(.blue)
                .important()
        }
    }
    Media("only screen and (max-width: 600px)") {
        Element(.div) {
            BackgroundColor("#000")
            Color(.white)
        }
        Id("custom-identifier") {
            Background("#222")
            Color(.cyan)
        }
        Class("custom-class") {
            Background("#333")
            Color(.aliceBlue)
        }
        Selector("ul > li > a") {
            Background("black")
            Color(.red)
                .important()
        }
        .pseudo(.hover)
        All {
            Background("red")
            Padding(.zero)
            Margin(.zero)
        }
        Element(.p) {
            Margin(bottom: .px(20))
            MarginBottom(.px(20))
        }
        Root {
            Color(.blue)
            BackgroundColor(.transparent)
            AnimationDelay(.seconds(45))
            BorderBottomWidth(.length(.px(4)))
        }
    }
}
