

import SwiftUI

struct AdditionGameView: View {
    private var gameViewModel = AdditionGameViewModel()
    
    @Environment(HighScoreViewModel.self) private var highScoreVM:
    HighScoreViewModel
    
    @State private var highScoreViewIsPresented = false
    
    @State private var name: String = ""
    
    
    var showHighScore: Bool {
        gameViewModel.gameOver && highScoreVM.isNewHighScore(score: gameViewModel.score)
    }
    
    var showGameOverView: Bool {
        gameViewModel.gameOver
        //todo: Update once we have high score view

    }
    var body: some View {
        ZStack {
            GameBackgroundView()
            VStack {
                ScoreLivesView(score: gameViewModel.score, 
                               lives: gameViewModel.gameModel.lives,
                               maxLives: 3,
                               level: gameViewModel.gameModel.level)
                Spacer()
                BubbleView(textColor: .white,
                           backgroundColor: .blue.opacity(0.3),
                           name: "bubble1",
                           text: "\(gameViewModel.number1) + \(gameViewModel.number2)")
                
                Spacer()
                
                OptionsView(gameVM: gameViewModel)
            }
            .padding()
            .blur(radius: showGameOverView ? 5 : 0)
            .disabled(showGameOverView) //disables if showGameOverView is true
            
            
            GameOverView()
                .padding()
            .blur(radius: showGameOverView ? 0 : 30)
            .opacity(showGameOverView ? 1 : 0)
            .disabled(!showGameOverView)
            .onTapGesture {
                gameViewModel.reset()
            }
            
        }
        .fullScreenCover(isPresented: $highScoreViewIsPresented, 
                         onDismiss: {
                            gameViewModel.reset()
                            })
        {
            EnterNewHighScoreView(
                score: gameViewModel.score,
                name: $name,
                isPresented: $highScoreViewIsPresented
            ) //$ is for binding objects
        }
        .onChange(of: showHighScore) {
            highScoreViewIsPresented = showHighScore
        }
    }
}

#Preview {
    AdditionGameView()
        .environment(HighScoreViewModel())
}
