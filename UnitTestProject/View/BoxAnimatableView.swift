//
//  BoxAnimatableView.swift
//  UnitTestProject
//
//  Created by Yernur on 15.12.2023.
//

import SwiftUI

struct BoxAnimatableView: AnimatableModifier {
    private let cornerRadius: CGFloat = 10
    private let edgeLineWidth: CGFloat = 3
    
    var rotation: Double
    
    var isFaceUp: Bool {
        rotation < 90
    }
    
    var animatableData: Double {
        get { rotation }
        set { rotation = newValue }
    }
    
    init(isFaceUp: Bool) {
        rotation = isFaceUp ? 0 : 180
    }
    
    func body(content: Content) -> some View {
        ZStack {
            Group {
                RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: edgeLineWidth)
                content
            }
            .opacity(isFaceUp ? 1 : 0)
            
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill()
                .opacity(isFaceUp ? 0 : 1)
        }
        .rotation3DEffect(Angle(degrees: rotation), axis: (0, 1, 0))
    }
}

extension View {
    func makeBoxAnimatable(isFaceUp: Bool) -> some View {
        self.modifier(BoxAnimatableView(isFaceUp: isFaceUp))
    }
}
