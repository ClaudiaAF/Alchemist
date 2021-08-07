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
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
                    .preferredColorScheme(isDarkMode ? .light : .dark)
                
            } else {
                ContentView()
                    .environmentObject(Dungeon())
                    .preferredColorScheme(isDarkMode ? .light : .dark)
            }
        }
    }
}
