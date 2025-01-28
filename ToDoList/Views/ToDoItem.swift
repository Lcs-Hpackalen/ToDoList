//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Hannu Packalen on 2025-01-27.
//

import SwiftUI

struct ToDoItem: View {
    //Mark: stored properties
    @State var providedItem: ToDoItemModel
    
    //Mark: computed properties
    var body: some View {
        HStack {
            Button(action:{
                providedItem.done.toggle()
            } , label:{
                Image (systemName: providedItem.done ? "circle.checkmark" : "circle.empty")
                    .resizable()
                    .scaledToFit()
            })
            
            Text("\(providedItem.description)")
    }
  }
}

#Preview {
    ToDoItem(providedItem: sampleData)
}
