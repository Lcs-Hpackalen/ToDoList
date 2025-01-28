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
    var doneImage: Image{
        if providedItem.done == true {
            return Image(systemName: "checkmark.circle.fill")
        }
        else {
            return Image(systemName: "circle")
        }
    }
    var body: some View {
        HStack {
            Button(action:{
                providedItem.done.toggle()
            } , label:{
                Image (systemName: "\(doneImage)")
            })
            
            Text("\(providedItem.description)")
                .font(.system(size: 31))
    }
  }
}

#Preview {
    ToDoItem(providedItem: sampleData)
}
