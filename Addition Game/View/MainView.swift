//
//  ContentView.swift
//  Addition Game
//
//  Created by Maggie Trimpin on 2/26/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            AdditionGameView()
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Game")
                }
            HighScoreView()
                .tabItem {
                    Image(systemName: "list.number")
                    Text("High Scores")
                }
        }
    }
}

#Preview {
    MainView()
        .environmentObject(HighScoreViewModel())
}
