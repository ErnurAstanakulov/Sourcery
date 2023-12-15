//
//  CardView.swift
//  UnitTestProject
//
//  Created by Yernur on 02.12.2023.
//

import SwiftUI

struct BoxView: View {
    private let emoji: EmojiModel
    init(emoji: EmojiModel) {
        self.emoji = emoji
    }
    
    var body: some View {
        GeometryReader { geometry in
            if emoji.isFaceUp {
                ZStack {
                    Group {
                        Text(emoji.name + " - \(emoji.score)")
                            .font(Font.system(size: geometry.size.width * 0.2))
                    }
                }
                .makeBoxAnimatable(isFaceUp: emoji.isFaceUp)
                .padding(20)
            }
        }
    }
}
