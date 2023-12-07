//
//  ListView.swift
//  TodoList
//
//  Created by donghyeon choi on 12/7/23.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "Hohh", isCompleted: true),
        ItemModel(title: "Hohh2", isCompleted: false),
        ItemModel(title: "Hooo", isCompleted: false)
        
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
            .onDelete(perform: deleteItem)
        }
        .listStyle(.plain)
        .navigationTitle("메모!")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink {
                    AddView()
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
}

#Preview {
    NavigationView {
        ListView()
    }
}
