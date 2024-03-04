
import SwiftUI

struct BubbleView: View {
    let bubbleSize: CGFloat = 200.0
    let textColor: Color
    let backgroundColor: Color
    let name: String
    let text: String
    
    @State private var rotate = 0.0
    
    var body: some View {

        Text(text)
            .foregroundColor(textColor)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding()
            .background(
                Image(name)
                .resizable()
                .scaledToFill()
                .opacity(0.6)
                .rotationEffect(Angle(degrees: rotate))
                .background(backgroundColor)
                .clipShape(Circle())
            
            )
            .padding()
            .onAppear{
                withAnimation(
                    .linear(duration: 20)
                    .repeatForever(autoreverses:false)
                ) {
                    rotate = 360
                }
            }
    }
}

#Preview {
    VStack {
        BubbleView(textColor: .black,
                   backgroundColor: .blue.opacity(0.3),
                   name: "bubble1",
                   text: "25")
        BubbleView(textColor: .black,
                   backgroundColor: .blue.opacity(0.3),
                   name: "bubble1",
                   text: "25")
        BubbleView(textColor: .black,
                   backgroundColor: .blue.opacity(0.3),
                   name: "bubble1",
                   text: "25")
        BubbleView(textColor: .black,
                   backgroundColor: .blue.opacity(0.3),
                   name: "bubble1",
                   text: "25")
    }
}
