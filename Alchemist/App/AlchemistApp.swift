//
//  AlchemistApp.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 28/04/1400 AP.
//

import SwiftUI

@main
struct AlchemistApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    @AppStorage("isDarkMode") var isDarkMode: Bool = true

    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
                    // dark and light mode preference
                    .preferredColorScheme(isDarkMode ? .dark : .light)

            } else {
                ContentView()
                    // for detailed view navigation
                    .environmentObject(Dungeon())

                    // dark and light mode preference
                    .preferredColorScheme(isDarkMode ? .dark : .light)
            }
        }
    }
}
