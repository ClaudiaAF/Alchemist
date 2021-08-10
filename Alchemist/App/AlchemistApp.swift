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
                    .preferredColorScheme(isDarkMode ? .dark : .light)
                
            } else {
                ContentView()
                    .environmentObject(Dungeon())
                    .preferredColorScheme(isDarkMode ? .dark : .light)
            }
        }
    }
}
