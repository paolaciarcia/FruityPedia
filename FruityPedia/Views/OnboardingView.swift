//
//  OnboardingView.swift
//  FruityPedia
//
//  Created by Paola Golombieski Ciarcia on 19/10/23.
//

import SwiftUI

struct OnboardingView: View {
    private var fruits: [Fruit] = Fruit.adaptData()

    var body: some View {
        TabView {
            ForEach(fruits) { fruit in
                FruitCardView(fruit: fruit)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
