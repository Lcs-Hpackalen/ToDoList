//
//  ContentView.swift
//  ToDoList
//
//  Created by Hannu Packalen on 2025-01-27.
//

import SwiftUI

struct ToDoListView: View {
    //Mark: stored properties
    @State var newItemDescription: String = ""
    
    @State var searchText: String = ""
    
    
    @State var toDos: [ToDoItemModel] = ToDoItems
    
    //Mark: computed properties
    var body: some View {
        NavigationView{
            
            VStack{
                
                List($toDos) { $todo in
                    
                    ItemView(currentItem: todo)
                    
                        .swipeActions{
                            Button(
                                "Delete",
                                role: .destructive,
                                action: {
                                    delete(todo)
                                }
                            )
                        }
                        .onTapGesture {
                            todo.done.toggle()
                        }
                }
                .searchable(text: $searchText)
                
                HStack{
                    TextField("Add new item", text: $newItemDescription)
                    Button("Add"){
                        createToDoItem(withTitle: newItemDescription)
                    }
                    .font(.caption)
                    .disabled(newItemDescription.isEmpty == true)
                }
                .padding()
            }
            .navigationTitle("To Do List")
        }
    }
    
    //Mark: Function
    func createToDoItem(withTitle title: String){
        
        
        let todo = ToDoItemModel(
            description: title,
            done: false
        )
        toDos.append(todo)
    }
    
    func delete(_ todo: ToDoItemModel){
        
        toDos.removeAll { currentItem in
            currentItem.id == todo.id
        }
    }
}
#Preview {
    ToDoListView()
}
