//
//  AddTodoView.swift
//  TodoList
//
//  Created by levin marvyn on 28/01/2025.
//

import SwiftUI

struct AddTodoView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var todoVM: TodoViewModel
    
    @State private var todoTitle: String = ""
    @State private var priority: Priority = .normal
    
    var body: some View {
        VStack {
            TextField("Enter your task", text: $todoTitle)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(.systemGray4))
                .cornerRadius(10)
            
            // choix multiple des priorités
            Picker("Priority", selection: $priority) {
                ForEach(Priority.allCases, id: \.self) {
                    priority in Text(priority.rawValue)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Button {
                self.todoVM.addTodo(todo: Todo(title: todoTitle, isCompleted: false, priority: priority))
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Text("SAVE")
                    .foregroundStyle(.white)
                    .font(.headline)
                    .frame(height: 55)
                    // equivalent du 100vw
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
                
            }
            Spacer()

        }
        .padding(14)
        .navigationTitle("Add a Todo")
    }
}

// Ici on hérite pas de la navigation
//#Preview {
//    AddTodoView()
//}

#Preview {
    NavigationView {
        AddTodoView()
    }
}


