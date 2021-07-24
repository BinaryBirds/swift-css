//
//  SwiftCssTests.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 11..
//

import XCTest
@testable import SwiftCss

final class SwiftCssTests: XCTestCase {
    
    func testCss001() {
        @RuleBuilder func buildCSS() -> [Rule] {
            Media {
                All {
                    Margin(.zero)
                    Padding(.zero)
                }
                Element(.body) {
                    Margin(horizontal: .auto, vertical: .length(.rem(2)))
                    Background(.color("cafe00"), image: .url("./test.png"), position: .leftTop)
                    Color(.white)
                }
                Element(.a) {
                    Color(.red)
                }
                Element(.a) {
                    Color(.orange)
                    BoxShadow(.px(6), .px(4), blur: .px(2), color: "cafe00")
                }
                .pseudo(.hover)
            }
        }

        let sel = buildCSS()
        print(sel.map(\.css).joined(separator: "\n"))
        XCTAssertTrue(true)
    }
    
    func testExample() {
        @RuleBuilder func buildCSS() -> [Rule] {
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

        let sel = buildCSS()
        print(sel.map(\.css).joined(separator: "\n"))
        XCTAssertTrue(true)
    }
    
    func testVariable() {
        @RuleBuilder func buildCSS() -> [Rule] {
            Media {
                Root {
                    Variable("size", "400px")
                }
                
                Selector(".container") {
                    Width("var(--size)")
                }
            }
            Media(.xs) {
                Root {
                    Variable("size", "200px")
                }
            }
            Media(.dark) {
                Root {
                    Variable("size", "500px")
                }
            }
            Media(.standalone) {
                Root {
                    Variable("size", "460px")
                }
            }
        }

        let sel = buildCSS()
        print(sel.map(\.css).joined(separator: "\n"))
        XCTAssertTrue(true)
    }
}


