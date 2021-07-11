//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 11..
//

import XCTest
@testable import SwiftCss

final class SelectorTests: XCTestCase {
    
    // MARK: - margin
    
    func testMargin() {
        XCTAssertEqual(Margin(h: .px(8)).css, "\tmargin: 8.0px 0;\n")
        XCTAssertEqual(Margin(h: .length(.zero), v: .auto).css, "\tmargin: 0 auto;\n")
    }

    func testMarginBottom() {
        XCTAssertEqual(MarginBottom(.length(.px(8))).css, "\tmargin-bottom: 8.0px;\n")
        XCTAssertEqual(MarginBottom(.length(.percent(25))).css, "\tmargin-bottom: 25.0%;\n")
    }
    
    // MARK: - padding
    
    func testPadding() {
        XCTAssertEqual(Padding(.zero).css, "\tpadding: 0;\n")
        XCTAssertEqual(Padding(.rem(8)).css, "\tpadding: 8.0rem;\n")
        XCTAssertEqual(Padding(h: .px(8)).css, "\tpadding: 8.0px 0;\n")
        XCTAssertEqual(Padding(h: .length(.zero), v: .inherit).css, "\tpadding: 0 inherit;\n")
    }
}


