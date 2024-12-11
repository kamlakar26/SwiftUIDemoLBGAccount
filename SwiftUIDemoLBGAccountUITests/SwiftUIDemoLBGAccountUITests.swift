//
//  SwiftUIDemoLBGAccountUITests.swift
//  SwiftUIDemoLBGAccountUITests
//
//  Created by Kamlakar Shimpi on 11/12/24.
//

import XCTest

final class SwiftUIDemoLBGAccountUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    @MainActor
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.navigationBars["Comment List"].staticTexts["Comment List"].tap()
        app.collectionViews["Sidebar"]/*@START_MENU_TOKEN@*/.staticTexts["Name id labore ex et quam laborum)"]/*[[".cells",".buttons[\"Name id labore ex et quam laborum), Email is Eliseo@gardner.biz)\"].staticTexts[\"Name id labore ex et quam laborum)\"]",".staticTexts[\"Name id labore ex et quam laborum)\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    @MainActor
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
