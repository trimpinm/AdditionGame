//
//  EnterNewHighScoreView.swift
//  Addition Game
//
//  Created by Maggie Trimpin on 3/4/24.
//

import SwiftUI

struct EnterNewHighScoreView: View {
    let score: Int
    @Binding var name: String
    @Binding var isPresented: Bool
    
    @Environment(HighScoreViewModel.self) private var highScoreVM:
    HighScoreViewModel
    var body: some View {
        ZStack
        {
            BackgroundView(colorList: [.blue, .green], opacity: 1)
            VStack{
                Text("New High Score!")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                
                Text("\(score)")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                
                TextField("Enter name: ", text: $name)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .autocorrectionDisabled()
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding()
                
                Button(action:
                        {
                    name = name.isEmpty ? "Anon" : name
                    highScoreVM
                        .addHighScore(name: name, score: Int64(score))
                    isPresented = false
                    }, label: {
                        Text("Save")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                    }
                )
            }
        }
    }
}

#Preview {
    EnterNewHighScoreView(
        score: 123,
        name: .constant(""),
        isPresented: .constant(true)
    )
        .environment(HighScoreViewModel())
}
