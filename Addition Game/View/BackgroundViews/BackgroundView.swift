

import SwiftUI

struct BackgroundView: View {
    let colorList: [Color]
    let opacity: Double
    var body: some View {
        LinearGradient(
            colors: colorList,
            startPoint: .bottomLeading,
            endPoint: .topTrailing
                )
        .opacity(opacity)
        .ignoresSafeArea()
    }
}

struct GameBackgroundView: View {
    var body: some View{
        BackgroundView(
            colorList: [
                Color.blue,
                Color.pink,
                Color.clear
            ],
            opacity: 0.7)
    }
}

struct HighScoreBackgroundView: View {
    var body: some View{
        BackgroundView(
            colorList: [
                Color.black,
                Color.black,
                Color.gray
            ],
            opacity: 0.7)
    }
}


#Preview {
    BackgroundView(
        colorList: [
            Color.blue,
            Color.pink,
            Color.clear
        ],
        opacity: 0.7)
}
