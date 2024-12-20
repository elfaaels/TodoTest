//
//  TodoTestTests.swift
//  TodoTestTests
//
//  Created by Elfana Anamta Chatya on 20/12/24.
//

import XCTest
@testable import TodoTest

final class TodoTestTests: XCTestCase {
    
    private var sut: ContentView!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        try super.setUpWithError()
        sut = ContentView()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        try super.tearDownWithError()
    }

    func testAddTask() {
        let taskManager = TaskManager()
        taskManager.newTask = "Buy Coffee"
        taskManager.addTask()
        XCTAssertEqual(taskManager.tasks, ["Buy Coffee"])
    }
    
    func testDeleteTask() {
        let taskManager = TaskManager()
        taskManager.tasks = ["Buy Coffee", "Pilates"]
        taskManager.deleteTask("Buy Coffee")
        XCTAssertEqual(taskManager.tasks, ["Pilates"])
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

