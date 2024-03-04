//
//  Test Localize.swift
//  Addition Game
//
//  Created by Maggie Trimpin on 2/26/24.
//

import SwiftUI

struct Test_Localize: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Game Over")
            Text("Score")
            Text("Level")
            Text("Game")
            Text("High Scores")
            Text("Rank")
            Text("Name")
            Text("Save")
        }
        .font(.title)
    }
}

#Preview {
    Test_Localize()
}
