
import Foundation

struct ProblemModel: Identifiable {
    let id = UUID()
    let number1: Int
    let number2: Int
    let level: Int
    
    //solutions[0] is the answer
    //the other array elements are distractions (false answers)
    let solutions: [Int]
    var answer: Int {
        solutions[0]
    }
    
    func checkSolution(value: Int) -> Bool {
        !solutions.isEmpty && value == answer
    }
    
    init(level: Int) {
        self.level = level
        //initialize numbers
        //number size increases as level increases, difficulty
        let lower = level * 5
        let upper = (level + 1) * 5
        self.number1 = Int.random(in: lower...upper)
        self.number2 = Int.random(in: lower...upper)
        let answer = number1 + number2
        
        var newSolution: [Int] = []
        newSolution.append(answer) //correct solution[0]
        newSolution.append(answer + 10) //distraction
        let belowAnswer = answer - 5
        let aboveAnswer = answer + 5
        newSolution.append(Int.random(in: answer+1...aboveAnswer))
        newSolution.append(Int.random(in: belowAnswer..<answer))
        self.solutions = newSolution
        }
    }

