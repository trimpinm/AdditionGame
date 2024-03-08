//
//  HighScoreTitle.swift
//  Addition Game
//
//  Created by Maggie Trimpin on 3/7/24.
//

import SwiftUI

struct HighScoreTitle: View {
    var body: some View {
        HStack{
            VTextImage(imageName: "penguin1", text: "Rank", dimensions: 25)
            VTextImage(imageName: "penguin2", text: "Score", dimensions: 25)
            VTextImage(imageName: "penguin3", text: "Name", dimensions: 25)
        }.padding(.horizontal)
    }
}


#Preview {
    HighScoreTitle()
}
