//
//  TodoTestUITests.swift
//  TodoTestUITests
//
//  Created by Elfana Anamta Chatya on 20/12/24.
//

import XCTest

final class TodoTestUITests: XCTestCase {
    
    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
//        app.launchArguments = ["-UseMockData"]
        app.launch()
    }


    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    
    func testAddTask() throws {
        let newTaskTextField = app.textFields["newTaskTextField"]
        let addTaskButton = app.buttons["addTaskButton"]
        let taskList = app.tables["taskList"]

        newTaskTextField.tap()
        newTaskTextField.typeText("Buy Coffee")
        addTaskButton.tap()

        let newTask = taskList.cells.staticTexts["task_Buy Coffee"]
    }

}
