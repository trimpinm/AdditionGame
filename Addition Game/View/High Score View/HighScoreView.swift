
import SwiftUI

struct HighScoreView: View {
    var body: some View {
        ZStack {
            HighScoreBackgroundView()
            Text("High Score View")
                .foregroundColor(.white)
        }
    }
}

#Preview {
    HighScoreView()
}
