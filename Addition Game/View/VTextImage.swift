//
//  VTextImage.swift
//  Addition Game
//
//  Created by Maggie Trimpin on 3/7/24.
//

import SwiftUI

struct VTextImage: View {
    let imageName: String
    let text: LocalizedStringKey
    let dimensions: Double
    var body: some View{
        VStack{
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: dimensions, height: dimensions)
            Text(text)
                .fixedSize(horizontal: true, vertical: false)
                .font(.headline)
                .foregroundColor(.white)
                .fontWeight(.bold)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    VTextImage(imageName: "penguin1", text: "Rank", dimensions: 50)
}
