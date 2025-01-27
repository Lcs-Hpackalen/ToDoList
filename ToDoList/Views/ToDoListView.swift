//
//  ContentView.swift
//  ToDoList
//
//  Created by Hannu Packalen on 2025-01-27.
//

import SwiftUI

struct ToDoListView: View {
    //Mark: stored properties
    
    //Mark: computed properties
    var body: some View {
        VStack {
            HStack{
                Text("To do")
                    .font(.system(size: 44))
                          
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    ToDoListView()
}
