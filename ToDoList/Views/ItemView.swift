//
//  ItemView.swift
//  ToDoList
//
//  Created by Hannu Packalen on 2025-01-28.
//

import SwiftUI

struct ItemView: View {
    let currentItem: ToDoItemModel
    
    
    var body: some View {
        Label(
            title: {
                Text("\(currentItem.description)")
            }, icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
            }
        )
    }
}

#Preview {
    List {
        ItemView(currentItem: sampleData)
        ItemView(currentItem: sampleData2)
    }
}
