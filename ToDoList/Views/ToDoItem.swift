//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Hannu Packalen on 2025-01-27.
//

import SwiftUI

struct ToDoItem: View {
    //Mark: stored properties
    var providedItem: ToDoItemModel
    //Mark: computed properties
    var body: some View {
        HStack {
            
            Text("\(providedItem.description)")
    }
  }
}

#Preview {
    ToDoItem(providedItem: sampleData)
}
