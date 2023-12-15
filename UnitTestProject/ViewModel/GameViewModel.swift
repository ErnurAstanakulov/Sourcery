//
//  GameViewModel.swift
//  UnitTestProject
//
//  Created by Yernur on 02.12.2023.
//

import Combine
import SwiftUI

final class GameViewModel: ObservableObject {
    private let randomGenerate: RandomGenerateProtocol
    private let maxScore = 3
    
    init(randomGenerate: RandomGenerateProtocol) {
        self.randomGenerate = randomGenerate
    }
        
    @Published var emojis: [EmojiModel] = [
            EmojiModel(id: 0, isFaceUp: true, name: "♠️", score: 0, detail: EmojiDetail(creteDate: Date().addingTimeInterval(1))),
            EmojiModel(id: 1, isFaceUp: true, name: "♥️", score: 0, detail: EmojiDetail(creteDate: Date().addingTimeInterval(11))),
            EmojiModel(id: 2, isFaceUp: true, name: "♣️", score: 0, detail: EmojiDetail(creteDate:Date().addingTimeInterval(-21))),
            EmojiModel(id: 3, isFaceUp: true, name: "♦️", score: 0, detail: EmojiDetail(creteDate:Date().addingTimeInterval(-111)))
    ]
    
    func setRandomEmoji() {
        var randomEmoji = emojis[randomGenerate.getRandomIndex()]
        randomEmoji.increment()
        if randomEmoji.score == maxScore {
            randomEmoji.isFaceUp = false
        }
        emojis[randomEmoji.id] = randomEmoji
    }
}
