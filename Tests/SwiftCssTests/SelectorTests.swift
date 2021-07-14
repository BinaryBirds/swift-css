//
//  SelectorTests.swift
//  SwiftCssTests
//
//  Created by Tibor Bodecs on 2021. 07. 11..
//

import XCTest
@testable import SwiftCss

final class SelectorTests: XCTestCase {
    
    // MARK: - margin
    
    func testMargin() {
        XCTAssertEqual(Margin(horizontal: .px(8)).css, "\tmargin: 8.0px 0;\n")
        XCTAssertEqual(Margin(horizontal: .length(.zero), vertical: .auto).css, "\tmargin: 0 auto;\n")
    }

    func testMarginBottom() {
        XCTAssertEqual(MarginBottom(.length(.px(8))).css, "\tmargin-bottom: 8.0px;\n")
        XCTAssertEqual(MarginBottom(.length(.percent(25))).css, "\tmargin-bottom: 25.0%;\n")
    }
    
    // MARK: - padding
    
    func testPadding() {
        XCTAssertEqual(Padding(.zero).css, "\tpadding: 0;\n")
        XCTAssertEqual(Padding(.rem(8)).css, "\tpadding: 8.0rem;\n")
        XCTAssertEqual(Padding(horizontal: .px(8)).css, "\tpadding: 8.0px 0;\n")
        XCTAssertEqual(Padding(horizontal: .length(.zero), vertical: .inherit).css, "\tpadding: 0 inherit;\n")
    }
}


