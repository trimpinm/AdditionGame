

import SwiftUI

struct OptionsView: View {
    let gameVM: AdditionGameViewModel
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        LazyVGrid(columns:columns) {
            ForEach(gameVM.possibleSolutions, id: \.self) {
                option in
                let cheatColor: Color = option == gameVM.answer ? .red : .black
                BubbleView(textColor: cheatColor,
                           backgroundColor: .blue.opacity(0.3),
                           name: "bubble1",
                           text: "\(option)")
                .onTapGesture {
                    withAnimation{
                        if gameVM.answer == option {
                            gameVM.increaseScore()
                        } else {
                            gameVM.loseLife()
                        }
                        gameVM
                            .generateNumbers()
                    }
                }
            }
        }
    }
}

#Preview {
    OptionsView(gameVM: AdditionGameViewModel())
}
