

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
                SelectButton(option: option,
                             gameVM: gameVM)
            }
        }
    }
}

struct SelectButton: View {
    let option: Int
    @State var selectedOption: Int? = nil
    let gameVM: AdditionGameViewModel
    
    var isSelected: Bool {
        selectedOption == option
    }
    
    var scale: CGFloat {
        isSelected ? 1.2 : 1.0
    }
    
    var color: Color {
        isSelected ? getRandomColor() : .blue.opacity(0.7)
    }
    
    func getRandomColor() -> Color {
        [.green.opacity(0.7),
            .red.opacity(0.7),
            .purple.opacity(0.7),
            .pink.opacity(0.7),
         Color.teal.opacity(0.8)]
            .randomElement() ?? .green.opacity(0.7)
    }
    
    var body: some View {
        BubbleView(textColor: .black,
                   backgroundColor: color,
                   name: "bubble1",
                   text: "\(option)")
        .scaleEffect(scale)
        .onTapGesture {
            withAnimation(.spring(response: 0.3,
                                  dampingFraction: 0.3)
                .repeatCount(1, autoreverses: true)
            ){
                selectedOption = option
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                withAnimation{
                    selectedOption = nil
                }
            }
            
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

#Preview {
    OptionsView(gameVM: AdditionGameViewModel())
}
