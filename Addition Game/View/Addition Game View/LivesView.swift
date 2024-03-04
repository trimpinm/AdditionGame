//
//  LivesView.swift
//  Addition Game
//
//  Created by Maggie Trimpin on 2/28/24.
//

import SwiftUI

struct LivesView: View {
    let image: Creatures
    let numLives: Int
    let dim = 30.0
    let maxLives: Int
    
    var body: some View {
        HStack {
            ForEach(0..<maxLives, id: \.self) { i in
                let opacity: CGFloat = i >= numLives
                ? 0 : 1
                //once we lose a life, we set opacity to 0
                
                Image(image.rawValue)
                    .resizable()
                    .scaledToFit()
                    .opacity(opacity)
                .frame(width: dim, height: dim)
            }
        }
    }
}

#Preview {
    LivesView(
        image: .penguin1,
        numLives: 2,
        maxLives: 3
    )
}
