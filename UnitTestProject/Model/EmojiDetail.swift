//
//  EmojiDetail.swift
//  UnitTestProject
//
//  Created by Yernur on 15.12.2023.
//

import Foundation

// AutoEquatable
struct EmojiModel: Identifiable, AutoDictionary {
    let id: Int
    var isFaceUp: Bool
    let name: String
    var score: Int
    var detail: EmojiDetail
    
    mutating func increment() {
        score += 1
    }
}

struct EmojiDetail: AutoDictionary {
    //AutoEquatable, AutoDictionary
//    EmojiModel(id: 0, isFaceUp: true, name: "♠️", score: 0, detail: EmojiDetail(creteDate: Date().addingTimeInterval(1))),
//    EmojiModel(id: 1, isFaceUp: true, name: "♥️", score: 0, detail: EmojiDetail(creteDate: Date().addingTimeInterval(11))),
//    EmojiModel(id: 2, isFaceUp: true, name: "♣️", score: 0, detail: EmojiDetail(creteDate:Date().addingTimeInterval(-21))),
//    EmojiModel(id: 3, isFaceUp: true, name: "♦️", score: 0, detail: EmojiDetail(creteDate:Date().addingTimeInterval(-111)))

    var creteDate: Date
    var year: Int {
        return Calendar.current.dateComponents([.year], from: creteDate, to: Date()).year ?? -1
    }
}

protocol AutoDictionary {
    
}
