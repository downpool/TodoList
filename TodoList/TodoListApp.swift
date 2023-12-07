//
//  TodoListApp.swift
//  TodoList
//
//  Created by donghyeon choi on 12/7/23.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    @StateObject var vm = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(vm)
        }
    }
}
