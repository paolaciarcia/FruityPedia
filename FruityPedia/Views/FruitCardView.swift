//
//  FruitCardView.swift
//  FruityPedia
//
//  Created by Paola Golombieski Ciarcia on 19/10/23.
//

import SwiftUI

struct FruitCardView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)

                Text("Blueberry")
            }
        }
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
