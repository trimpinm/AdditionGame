//
//  Addition_GameApp.swift
//  Addition Game
//
//  Created by Maggie Trimpin on 2/26/24.
//

import SwiftUI

@main
struct Addition_GameApp: App {
    @StateObject var highScoreVM = HighScoreViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(highScoreVM)
        }
    }
}
