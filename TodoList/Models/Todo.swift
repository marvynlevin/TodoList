//
//  TodoList.swift
//  TodoList
//
//  Created by levin marvyn on 28/01/2025.
//

import Foundation

// enumavec ajout de String
enum Priority: String, CaseIterable {
    case low = "Low"
    case normal = "Normal"
    case high = "High"
}

struct Todo: Identifiable {
    // identifiable doit toujours avoir un id
    var id = UUID()
    var title: String
    var isCompleted: Bool
    var priority: Priority
    
    static var testData = [
        Todo(title: "Task 1", isCompleted: true, priority: .low),
        Todo(title: "Task 2", isCompleted: false, priority: .high),
        Todo(title: "Task 3", isCompleted: true, priority: .normal),
        Todo(title: "Task 4", isCompleted: false, priority: .low)
    ]
    
}

