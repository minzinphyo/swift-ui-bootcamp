//
//  TextFieldView.swift
//  Swift-UI-BootCamp
//
//  Created by Min Zin Phyo on 22/06/2024.
//

import SwiftUI

struct TextFieldView: View {
    
    @State var textFieldText: String = ""
    @State var dataArray : [String] = []
    
    var body: some View {
        NavigationView{
            VStack{
                TextField(
                    "Type Something....",
                    text: $textFieldText)
                .padding()
                .background(Color.gray.opacity(0.3).cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/))
                .foregroundColor(.red)
                .font(.headline)
                                
                Button(action: {
                    saveData()
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isButtonEnable() ? .blue : .gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.title2)
                })
                .disabled(!isButtonEnable())
                
                ForEach(dataArray, id : \.self){data in
                    Text(data)
                }
    
            }
            .padding()
            .navigationTitle("Text Field View")
        }
    }
    
    func isButtonEnable() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveData(){
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextFieldView()
}
