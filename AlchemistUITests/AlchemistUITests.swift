//
//  AlchemistUITests.swift
//  AlchemistUITests
//
//  Created by Claudia Ferreira on 25/05/1400 AP.
//

import XCTest

class AlchemistUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUpWithError() throws {
        app.launch()

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testsettingsPageAppearance() throws {
        app.buttons["settingsView"].tap()

        let settingsViewTitle = app.staticTexts["Settings"]
        XCTAssert(settingsViewTitle.waitForExistence(timeout: 0.5))
    }

    func testSearchList() throws {
        app.textFields.element.tap()
        app.textFields.element.typeText("Restore")

        XCTAssert(app.staticTexts["Restore Health"].exists)
    }

    func testDetailedView() throws {
        app.staticTexts["Restore Health"].tap()

        // only the restore health potion uses blue mountain flower as one of its ingredients
        XCTAssert(app.staticTexts["Blue Mountain Flower"].exists)
    }
}
