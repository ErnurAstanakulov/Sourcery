//
//  ContentView.swift
//  UnitTestProject
//
//  Created by Yernur on 02.12.2023.
//

import SwiftUI
import Combine

struct GameView: View {
    @ObservedObject var viewModel: GameViewModel
    init(viewModel: GameViewModel) {
        self.viewModel = viewModel
    }
    var body: some View {
        VStack {
            ForEach(viewModel.emojis) { emoji in
                BoxView(emoji: emoji)
                    .padding(5)
            }
            .padding()
            .foregroundColor(Color.gray)
            
            HStack {
                Button(action: {
                    viewModel.setRandomEmoji()
                }, label: {
                    Text("Generate")
                })
                .foregroundColor(.white)
                .background(Color.gray)
                .clipShape(Capsule())
                .scaleEffect(1.6)
                .buttonStyle(.bordered)
            }
            .padding(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(viewModel: GameViewModel(randomGenerate: RandomGenerateProtocolImpl()))
    }
}
