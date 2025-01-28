//
//  TodoList.swift
//  TodoList
//
//  Created by levin marvyn on 28/01/2025.
//

import Foundation

struct Todo: Identifiable {
    // identifiable doit toujours avoir un id
    var id = UUID()
    var title: String
    var isCompleted: Bool
    
    static var testData = [
        Todo(title: "Task 1", isCompleted: true),
        Todo(title: "Task 2", isCompleted: false),
        Todo(title: "Task 3", isCompleted: true),
        Todo(title: "Task 4", isCompleted: false)
    ]
    
}
