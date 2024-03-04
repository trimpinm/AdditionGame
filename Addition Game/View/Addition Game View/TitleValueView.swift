//
//  TitleValueView.swift
//  Addition Game
//
//  Created by Maggie Trimpin on 2/28/24.
//

import SwiftUI

struct TitleValueView: View {
    let title: String
    let value: Int
    var body: some View {
        VStack{
            VStack {
                Text("\(title)")
                Text("\(value)")
            }
            .font(.headline)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
        }
    }
}

#Preview {
    ZStack {
        GameBackgroundView()
        TitleValueView(title: "Score", value: 7)
    }
}
