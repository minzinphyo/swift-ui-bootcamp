//
//  NativePopOverView.swift
//  Swift-UI-BootCamp
//
//  Created by Min Zin Phyo on 23/06/2024.
//

import SwiftUI

struct NativePopOverView: View {
    
    @State private var isShowPopover: Bool = false
    @State private var feedbackOptions: [String] = [
        "Very good 🥳",
        "Average 🙂",
        "Very bad 😡"
    ]
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack {
                
                Spacer()

                Button("Provide feedback?") {
                    isShowPopover.toggle()
                }
                .padding(20)
                .background(Color.yellow)
                .cornerRadius(10)
                .popover(isPresented: $isShowPopover, attachmentAnchor: .point(.top), content: {
                    ScrollView {
                        VStack(alignment: .leading, spacing: 12, content: {
                            ForEach(feedbackOptions, id: \.self) { option in
                                Button(option) {
                                    isShowPopover = false
                                    print("Hello popup",option)
                                }
                                
                                if option != feedbackOptions.last {
                                    Divider()
                                }
                            }
                        })
                        .padding(20)
                    }
                    .presentationCompactAdaptation(.popover)
                })
            }
        }
    }
}

#Preview {
    NativePopOverView()
}
