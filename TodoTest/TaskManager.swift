//
//  TaskManager.swift
//  TodoTest
//
//  Created by Elfana Anamta Chatya on 20/12/24.
//

import Foundation

class TaskManager: ObservableObject {
    @Published var tasks: [String] = []
    @Published var newTask: String = ""
    
    func addTask() {
        guard !newTask.isEmpty else { return }
        tasks.append(newTask)
        print("Added Task: \(newTask)")
        print("Current Tasks: \(tasks)")
        
        newTask = ""
    }
    
    func deleteTask(_ task: String) {
        tasks.removeAll { $0 == task }
    }
}
