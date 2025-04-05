//
//  swiftUI_XCUITestTests.swift
//  swiftUI_XCUITestTests
//
//  Created by mac on 2023/06/21.
//

import XCTest
@testable import swiftUI_XCUITest

final class swiftUI_XCUITestTests: XCTestCase {

    func aaa_test() {
        let detail = DetailView()
        XCTAssert(detail.get_sample_test() == 1)
    }
}
