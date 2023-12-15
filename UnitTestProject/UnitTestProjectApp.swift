//
//  UnitTestProjectApp.swift
//  UnitTestProject
//
//  Created by Yernur on 02.12.2023.
//

import SwiftUI

@main
struct UnitTestProjectApp: App {
    var body: some Scene {
        WindowGroup {
            GameView(viewModel: GameViewModel(randomGenerate: RandomGenerateProtocolImpl()))
        }
    }
}
