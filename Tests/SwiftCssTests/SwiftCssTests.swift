//
//  SwiftCssTests.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 11..
//

import XCTest
@testable import SwiftCss

final class SwiftCssTests: XCTestCase {
    
    func testStylesheet() {
        let css = Stylesheet {
            Charset("UTF-8")

            Media {
                Root {
                    Margin(horizontal: .px(8.5), vertical: .px(8))
                    Padding(horizontal: .px(8), vertical: .px(8))
                }
            }

            Media(screen: .s) {
                Class("button") {
                    Color("#cafe00")
                }
            }
            Media(screen: .dark, {
                All {
                    Margin(horizontal: .px(8), vertical: .px(8))
                }
            })
            Media(screen: .standalone) {
                Id("lead") {
                    Background(.color(.red))
                }
            }
        }
        
        XCTAssertEqual(StylesheetRenderer().render(css), #"""
                               @charset "UTF-8";
                               :root {
                                   margin: 8.5px 8px;
                                   padding: 8px 8px;
                               }
                               @media screen and (min-width: 600px) {
                                   .button {
                                       color: #cafe00;
                                   }
                               }
                               @media screen and (prefers-color-scheme: dark) {
                                   * {
                                       margin: 8px 8px;
                                   }
                               }
                               @media screen and (display-mode: standalone) {
                                   #lead {
                                       background: red;
                                   }
                               }
                               """#)
    }
    
    
    
    func testVariable() {
        let css = Stylesheet {
            Media {
                Root {
                    Variable("size", "400px")
                }
                
                Selector(".container") {
                    Width("var(--size)")
                }
            }
            Media(screen: .xs) {
                Root {
                    Variable("size", "200px")
                }
            }
            Media(screen: .dark) {
                Root {
                    Variable("size", "500px")
                }
            }
            Media(screen: .standalone) {
                Root {
                    Variable("size", "460px")
                }
            }
        }

        XCTAssertEqual(StylesheetRenderer().render(css), #"""
                               :root {
                                   --size: 400px;
                               }
                               .container {
                                   width: var(--size);
                               }
                               @media screen and (max-width: 599px) {
                                   :root {
                                       --size: 200px;
                                   }
                               }
                               @media screen and (prefers-color-scheme: dark) {
                                   :root {
                                       --size: 500px;
                                   }
                               }
                               @media screen and (display-mode: standalone) {
                                   :root {
                                       --size: 460px;
                                   }
                               }
                               """#)
    }
    
    func testMediaQueries() {
        let css = Stylesheet {
            Media {
                Root {
                    Background(.color(.red))
                }
            }
            Media(screen: .xs) {
                Root {
                    Background(.color(.blue))
                }
            }
            Media(screen: .dark) {
                Root {
                    Background(.color(.green))
                }
            }
            Media(screen: .standalone) {
                Body {
                    Background(.color(.yellow))
                }
            }
        }

        XCTAssertEqual(StylesheetRenderer().render(css), #"""
                               :root {
                                   background: red;
                               }
                               @media screen and (max-width: 599px) {
                                   :root {
                                       background: blue;
                                   }
                               }
                               @media screen and (prefers-color-scheme: dark) {
                                   :root {
                                       background: green;
                                   }
                               }
                               @media screen and (display-mode: standalone) {
                                   body {
                                       background: yellow;
                                   }
                               }
                               """#)
    }
}


