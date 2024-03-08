//
//  Addition_GameApp.swift
//  Addition Game
//
//  Created by Maggie Trimpin on 2/26/24.
//

import SwiftUI

@main
struct Addition_GameApp: App {
    @State var highScoreVM = HighScoreViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(highScoreVM)
        }
    }
}
