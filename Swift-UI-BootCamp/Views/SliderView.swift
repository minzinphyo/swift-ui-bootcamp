//
//  SliderView.swift
//  Swift-UI-BootCamp
//
//  Created by Min Zin Phyo on 23/06/2024.
//

import SwiftUI

struct SliderView: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack{
            Text("Rating")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(color)
                
            Text(
                String(format: "%.0f", sliderValue)
            )
            
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    color = .green
                },
                minimumValueLabel:
                     Text("1")
                     .font(.largeTitle)
                     .foregroundColor(.orange)
                 ,
                 maximumValueLabel: Text("5"),
                 label: {
                     Text("Title")
                 })
                 .accentColor(.red)
        }
    }
}

#Preview {
    SliderView()
}
