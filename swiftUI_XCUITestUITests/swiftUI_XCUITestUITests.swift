//
//  swiftUI_XCUITestUITests.swift
//  swiftUI_XCUITestUITests
//
//  Created by mac on 2023/06/21.
//

import XCTest

final class swiftUI_XCUITestUITests: XCTestCase {
    
    let app = XCUIApplication()

    let textfieldsAccessibilityId = "contentview_text"
    let buttonAccessibilityId = "contentview_button"
    let textAccessibilityId = "detailview_text"
    
    func testMoveToDetailView() {
        XCTContext.runActivity(named: "Launch app") { _ in
            app.launch()
        }

        XCTContext.runActivity(named: "Text input Test") { _ in
            let typeTextString = "XCUITestでテキスト自動入力テスト"
            app.textFields[textfieldsAccessibilityId].tap()
            app.textFields[textfieldsAccessibilityId].typeText(typeTextString)
            if let str = app.textFields[textfieldsAccessibilityId].value as? String {
                XCTAssertTrue(str == typeTextString)
            }

        }
        
        XCTContext.runActivity(named: "Check content view") { _ in
            XCTAssertTrue(app.navigationBars["Content"].exists)
        }
        
        XCTContext.runActivity(named: "Tap button and show detail view") { _ in
            app.buttons[buttonAccessibilityId].tap()
            XCTAssertTrue(app.navigationBars["Detail"].exists)
            XCTAssertTrue(app.staticTexts[textAccessibilityId].exists)
        }
    }
}
