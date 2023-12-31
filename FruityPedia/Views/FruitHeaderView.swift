//
//  FruitHeaderView.swift
//  FruityPedia
//
//  Created by Paola Golombieski Ciarcia on 23/10/23.
//

import SwiftUI

struct FruitHeaderView: View {
    @State private var isAnimating: Bool = false

    var fruit: Fruit

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .padding(.vertical, 20)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .frame(height: 440)
                .scaleEffect(isAnimating ? 1.0 : 0.6)

                .onAppear() {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimating = true
                    }
                }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: .adaptData()[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
