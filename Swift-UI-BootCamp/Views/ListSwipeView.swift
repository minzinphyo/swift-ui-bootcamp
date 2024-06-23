//
//  ListSwipeView.swift
//  Swift-UI-BootCamp
//
//  Created by Min Zin Phyo on 23/06/2024.
//

import SwiftUI

struct ListSwipeView: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var isAllowFullSwipte : Bool = true
    
    var body: some View {
        List{
            ForEach(fruits,id: \.self){ data in
                Text(data.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: isAllowFullSwipte){
                        Button("Archive") {
                            isAllowFullSwipte = false
                        }
                        .tint(.green)
                        Button("Save") {
                            isAllowFullSwipte = false
                            print("isAllowFullSwipte",isAllowFullSwipte)
                        }
                        .tint(.blue)
                        Button("Junk") {
                            isAllowFullSwipte = false
                        }
                        .tint(.black)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: !isAllowFullSwipte) {
                        Button("Share") {
                            isAllowFullSwipte = true
                        }
                        .tint(.yellow)
                    }
            }
        }
    }
}

#Preview {
    ListSwipeView()
}
