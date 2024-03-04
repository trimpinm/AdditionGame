//
//  GameOverView.swift
//  Addition Game
//
//  Created by Maggie Trimpin on 3/4/24.
//

import SwiftUI

struct GameOverView: View {
    var body: some View {
        HStack{
            Label(
                title: {
                    Text("Game Over!")
                        .multilineTextAlignment(.center)
                    Image(.penguin2)
                        .resizable()
                        .scaledToFill()
                        .frame(width:40, height: 40)
                        .padding()
                    
                },
                icon: {
                    Image(systemName: "arrowshape.turn.up.backward.circle.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width:40, height:40)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .padding()
                }
            )
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .background(Color.black)
            .cornerRadius(10)
            .shadow(radius: 3)
        }
    }
}

#Preview {
    GameOverView()
}
