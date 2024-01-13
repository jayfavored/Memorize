//
//  ContentView.swift
//  Memorize
//
//  Created by Jay Huang on 1/12/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["🚗", "🥁", "🏡", "🔑", "🩻"]
    var cardCount = 4
    
    var body: some View {
        HStack {
            ForEach(0..<cardCount, id: \.self) {index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = false
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}


#Preview {
    ContentView()
}

