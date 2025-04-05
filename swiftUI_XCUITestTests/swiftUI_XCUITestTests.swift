//
//  swiftUI_XCUITestTests.swift
//  swiftUI_XCUITestTests
//
//  Created by mac on 2023/06/21.
//

import XCTest

final class swiftUI_XCUITestTests: XCTestCase {

    func testContentViewText() throws {
        let app = XCUIApplication()
        app.launch()

        let helloText = app.staticTexts["Hello, world!"]
        XCTAssertTrue(helloText.exists)
    }
}
