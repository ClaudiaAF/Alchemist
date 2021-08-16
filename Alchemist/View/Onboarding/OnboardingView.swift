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
                OnboardingCardView(image: "Onboard1", title: "Magic in Your Pocket", description: "Welcome to the go-to Skyrim Alchemy Recipes application.")
                    .ignoresSafeArea(.all)
                
                OnboardingCardView(image: "Onboard3", title: "Dark Cave or Sunlit Quarters", description: "Browse in dark or light mode, whichever your mage heart desires.")
                    .ignoresSafeArea(.all)
               
                ButtonOnboardingView(image: "Onboard2", title: "An Easy Find", description: "Access alchemy by browsing the list or search to make the process even quicker.")
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
