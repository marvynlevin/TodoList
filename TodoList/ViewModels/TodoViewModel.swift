//
//  TodoViewModel.swift
//  TodoList
//
//  Created by levin marvyn on 04/02/2025.
//

import Foundation


class TodoViewModel: ObservableObject {
    
    @Published var todos: [Todo] = []
    
    init() {
        getTodos()
    }
    
    func getTodos() {
        self.todos.append(contentsOf: Todo.testData)
    }
    
    func addTodo(todo: Todo) {
        self.todos.append(todo)
    }
    
    func deleteTodo(indexSet: IndexSet) {
        self.todos.remove(atOffsets: indexSet)
    }
    
    func moveTodo(from: IndexSet, to: Int) {
        self.todos.move(fromOffsets: from, toOffset: to)
    }
    
    func updateTodo(todo: Todo) {
        for (index, td) in todos.enumerated() {
            if todo.id == td.id {
                self.todos[index].isCompleted.toggle()
            }
        }
    }
    
}
