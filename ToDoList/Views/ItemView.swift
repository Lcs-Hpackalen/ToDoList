//
//  ItemView.swift
//  ToDoList
//
//  Created by Hannu Packalen on 2025-01-28.
//

import SwiftUI

struct ItemView: View {
    @Binding var currentItem: ToDoItemModel
    
    
    var body: some View {
        Label(
            title: {
                Text("\(currentItem.description)")
            }, icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
            }
        )
    }
}

#Preview {
    List {
        ItemView(currentItem: Binding.constant(sampleData))
        ItemView(currentItem: Binding.constant(sampleData2))
    }
}
