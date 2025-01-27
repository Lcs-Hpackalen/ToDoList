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
    var isCompleted: Bool = false
}

let ToDoItems: [ToDoItemModel] = []




