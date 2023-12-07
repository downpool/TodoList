//
//  ItemModel.swift
//  TodoList
//
//  Created by donghyeon choi on 12/7/23.
//

import Foundation


struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
