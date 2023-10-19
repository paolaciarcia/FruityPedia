//
//  FruityPediaApp.swift
//  FruityPedia
//
//  Created by Paola Golombieski Ciarcia on 19/10/23.
//

import SwiftUI

@main
struct FruityPediaApp: App {
    @AppStorage("isOnboarding") private var isOnboarding = true


    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
