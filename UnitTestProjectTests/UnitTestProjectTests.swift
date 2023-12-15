//
//  UnitTestProjectTests.swift
//  UnitTestProjectTests
//
//  Created by Yernur on 02.12.2023.
//

import XCTest
@testable import UnitTestProject

final class UnitTestProjectTests: XCTestCase {
    private var sut: GameViewModel?
    private let randomGenerateProtocolMock = RandomGenerateProtocolMock()
    
    override func setUpWithError() throws {
        sut = GameViewModel(randomGenerate: randomGenerateProtocolMock)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }
    
    func testRandomGenerateCall() throws {
        // given
        let emojiItems = [
            EmojiModel(id: 0, isFaceUp: true, name: "♠️", score: 0, detail: EmojiDetail(creteDate: Date().addingTimeInterval(1))),
            EmojiModel(id: 1, isFaceUp: true, name: "♥️", score: 0, detail: EmojiDetail(creteDate: Date().addingTimeInterval(11))),
            EmojiModel(id: 2, isFaceUp: true, name: "♣️", score: 0, detail: EmojiDetail(creteDate:Date().addingTimeInterval(-21))),
            EmojiModel(id: 3, isFaceUp: true, name: "♦️", score: 0, detail: EmojiDetail(creteDate:Date().addingTimeInterval(-111)))
        ]
        randomGenerateProtocolMock.getRandomIndexClosure = { return 0 }
        sut?.emojis = emojiItems
        sut?.setRandomEmoji()
        XCTAssertTrue(randomGenerateProtocolMock.getRandomIndexCalled)
    }

}
