//
//  ToDoItemModel.swift
//  ToDoList
//
//  Created by Hannu Packalen on 2025-01-27.
//

import Foundation
import SwiftUICore

 struct ToDoItemModel: Identifiable {
    var id: UUID = UUID()
    var description: String
    @State var done: Bool
}

let ToDoItems: [ToDoItemModel] = [sampleData]


let sampleData = ToDoItemModel(description: "Walk the dog",done: true)
    



