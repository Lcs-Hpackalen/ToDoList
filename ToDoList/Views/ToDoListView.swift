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
                
                List(toDos){ todo in
                    ItemView(currentItem: todo)
                }
                .searchable(text: $searchText)
                
                HStack{
                    TextField("Add new item", text: $newItemDescription)
                    Button("Add"){
                        
                    }
                    .font(.caption)
                }
                .padding()
            }
            .navigationTitle("To Do List")
        }
    }
}
#Preview {
    ToDoListView()
}
