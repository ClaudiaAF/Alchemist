//
//  OnboardingView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 04/05/1400 AP.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView{
            OnboardingCardView(image: "LogoTransp", title: "Welcome to Alchemist", description: "The Go-To Skyrim Alchemy Library App")
            
            OnboardingCardView(image: "LogoTransp", title: "Magic in Your Pocket", description: "Access alchemy recipes at the tap of a button")
            
            OnboardingCardView(image: "LogoTransp", title: "Get Makin'", description: "Let's get you started with some magical potion making!")
        }
        .tabViewStyle(PageTabViewStyle())
        .padding()
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
