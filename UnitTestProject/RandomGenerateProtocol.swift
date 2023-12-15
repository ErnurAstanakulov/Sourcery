//
//  Example.swift
//  UnitTestProject
//
//  Created by Yernur on 14.12.2023.
//

import Foundation

protocol AutoMockable { }
protocol RandomGenerateProtocol: AutoMockable {
    func getRandomIndex() -> Int
}

final class RandomGenerateProtocolImpl: RandomGenerateProtocol {
    func getRandomIndex() -> Int {
        return Int.random(in: 0...3)
    }
}
