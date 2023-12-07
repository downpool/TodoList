//
//  AddView.swift
//  TodoList
//
//  Created by donghyeon choi on 12/7/23.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    @EnvironmentObject var vm: ListViewModel
    
    var body: some View {
        
        ScrollView {
            VStack {
                TextField("메모를 추가하시오", text: $textFieldText)
                    .font(.title2)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
                Button {
                    saveButtonPressed()
                } label: {
                    Text("저장")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(.blue).cornerRadius(10)
                }

            }
            .font(.title2)
            .padding()
        }
        .navigationTitle("메모 추가")
    }
    
    func saveButtonPressed() {
        vm.addItem(title: textFieldText)
    }
    
}

#Preview {
    NavigationView{
        AddView()
    }
    .environmentObject(ListViewModel())
}
