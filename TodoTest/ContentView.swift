//
//  ContentView.swift
//  TodoTest
//
//  Created by Elfana Anamta Chatya on 20/12/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var taskManager = TaskManager()

    var body: some View {
        VStack {
            HStack {
                TextField("New Task", text: $taskManager.newTask)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .accessibilityIdentifier("newTaskTextField")
                Button("Add Task") {
                    taskManager.addTask()
                }
                .accessibilityIdentifier("addTaskButton")
            }
        }
        .padding()
        List {
            ForEach(taskManager.tasks, id: \.self) { task in
                HStack {
                    Text(task.trimmingCharacters(in: .whitespacesAndNewlines))
                        .accessibilityIdentifier("task_\(task.trimmingCharacters(in: .whitespacesAndNewlines))")
                    Spacer()
                    Button("Delete") {
                        taskManager.deleteTask(task)
                    }
                    .accessibilityIdentifier("deleteTaskButton_\(task)")
                }
            }
        }
        .accessibilityIdentifier("taskList")
        .padding()
    }
}

#Preview {
    ContentView()
}
