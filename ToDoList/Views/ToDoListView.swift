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
    //Mark: computed properties
    var body: some View {
        VStack {
            HStack{
                Text("To do")
                    .font(.system(size: 44))
                          
                Spacer()
            }
            TextField("\(Image(systemName: "magnifyingglass")) search", text: $searchText)
                .textFieldStyle(.roundedBorder)
                .foregroundStyle(.gray)
            Divider()
            List{
                
            }
        }
        .padding()
    }
}

#Preview {
    ToDoListView()
}
