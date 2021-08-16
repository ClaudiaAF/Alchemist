//
//  OnboardingView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 04/05/1400 AP.
//

import SwiftUI

struct OnboardingView: View {
    
    var body: some View {
        ZStack{
            Color("offBlack")
                .ignoresSafeArea(.all)
        ScrollView{
            TabView{
                OnboardingCardView(image: "Onboard1", title: "Magic in Your Pocket", description: "The Go-To Skyrim Alchemy Library App")
                    .ignoresSafeArea(.all)
                
                OnboardingCardView(image: "Onboard2", title: "An Easy Find", description: "Access alchemy recipes at the tap of a button")
                    .ignoresSafeArea(.all)
                
                ButtonOnboardingView(image: "Onboard3", title: "Potions Galore", description: "Let's get you started with some magical potion making!")
                    .ignoresSafeArea(.all)
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .tabViewStyle(PageTabViewStyle())
        }.edgesIgnoringSafeArea(.all)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .preferredColorScheme(.dark)
    }
}
