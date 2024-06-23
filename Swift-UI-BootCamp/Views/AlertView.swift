//
//  AlertView.swift
//  Swift-UI-BootCamp
//
//  Created by Min Zin Phyo on 23/06/2024.
//

import SwiftUI

struct AlertView: View {
    
    @State var backgroundColor : Color = .green
    @State private var isShowAlert : Bool = false
    @State var alertType : AlertType? = nil
    
    enum AlertType{
        case error
        case success
    }
    
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                Button(action: {
                    alertType = .error
                    isShowAlert.toggle()
                }, label: {
                    Text("Show Error Alert")
                        .foregroundColor(.white)
                        .padding()
                        .background(.blue)
                        .cornerRadius(10)
                        .padding(.bottom)
                })
                
                Button(action: {
                    alertType = .success
                    isShowAlert.toggle()
                }, label: {
                    Text("Show Success Alert")
                        .foregroundColor(.white)
                        .padding()
                        .background(.blue)
                        .cornerRadius(10)
                })
            }
        }
        .alert(isPresented: $isShowAlert, content: {
            getAlert()
        })
    }
    
    func getAlert() -> Alert{
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error!"),dismissButton:
                    .default(Text("OK"),action: {
                        backgroundColor = .green
                    })
            )
        case .success:
            return Alert(title: Text("This was a success!"), message: nil, dismissButton: .default(Text("OK"), action: {
                            backgroundColor = .red
        }))
        case nil:
            return Alert(title: Text("ERROR"))
        }
    }
}

#Preview {
    AlertView()
}
