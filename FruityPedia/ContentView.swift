//
//  ContentView.swift
//  FruityPedia
//
//  Created by Paola Golombieski Ciarcia on 19/10/23.
//

import SwiftUI

struct ContentView: View {
    private var fruits: [Fruit] = Fruit.adaptData()

    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
