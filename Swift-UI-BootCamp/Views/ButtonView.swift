//
//  ButtonView.swift
//  Swift-UI-BootCamp
//
//  Created by Min Zin Phyo on 23/06/2024.
//

import SwiftUI

struct ButtonView: View {
    
    @State var title : String = "This is title"
    
    var body: some View {
        VStack(spacing: 20){
            Text(title)
            
            Button("Button 1") {
                self.title = "Button 1 was pressed"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "Button 2 was pressed"
            }, label: {
                Text("Button 2".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal,40)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    )
            })
            
            Button(action: {
                self.title = "Button 3 was pressed"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 50,height: 50)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color(#colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1)))
                    )
            })
            
            Button(action: {
                self.title = "Button 4 was pressed"
            }, label: {
                Text("Button 4".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 4.0)
                    )
            })
        }
    }
}

#Preview {
    ButtonView()
}
