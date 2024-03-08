

import Foundation
import Observation

@Observable class AdditionGameViewModel {
    var gameModel: GameModel = GameModel.defaultGame
    
    private var problemCount = 0
    let nextLevelBound = 5
    
    var score: Int {
        gameModel.score
    }
    var timeToLevelUp: Bool {
        problemCount % nextLevelBound == 0 //level up every 5 problems
    }
    var number1: Int {
        gameModel.currentProblem.number1
    }
    var number2: Int {
        gameModel.currentProblem.number2
    }
    var possibleSolutions: [Int] {
        gameModel.currentProblem.solutions.shuffled()
    }
    var answer: Int {
        gameModel.currentProblem.answer
    }
    var gameOver: Bool {
        gameModel.gameOver
    }
    
    func generateNumbers() {
        //generates new problem
        gameModel.currentProblem = ProblemModel(level: gameModel.level)
        //increase problem count
        problemCount += 1
        //time to level up?
        if timeToLevelUp{
            gameModel.level += 1
        }
    }
    
    func increaseScore() {
        gameModel.score += gameModel.level
    }
    
    func loseLife(){
        gameModel.lives -= 1
    }
    //new game
    func reset(){
        gameModel = GameModel.defaultGame
        problemCount = 0
    }
}
