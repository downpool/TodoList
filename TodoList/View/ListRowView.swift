//
//  ListRowView.swift
//  TodoList
//
//  Created by donghyeon choi on 12/7/23.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ?  "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 4)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "hell", isCompleted: true)
    static var item2 = ItemModel(title: "hel2l", isCompleted: false)
    static var item3 = ItemModel(title: "hell2", isCompleted: true)
    
    static var previews: some View{
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
            ListRowView(item: item3)
        }
//        .previewLayout(.sizeThatFits)
    }
}
