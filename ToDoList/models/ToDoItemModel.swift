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

let ToDoItems: [ToDoItemModel] = [sampleData, sampleData2]


var sampleData = ToDoItemModel(description: "Walk the dog",done: false)
var sampleData2 = ToDoItemModel(description: "Buy milk",done: false)



