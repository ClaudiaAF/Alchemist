//
//  OnboardingCardView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 04/05/1400 AP.
//

import SwiftUI

struct OnboardingCardView: View {
    var image: String
    var title: String
    var description: String

    var body: some View {
        ZStack {
            // backgroundImage
            Image(image)
                .resizable()
                .edgesIgnoringSafeArea(.all)

            // Titile
            VStack {
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color("text"))
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 15)
                    .frame(width: 350, height: 530, alignment: .topLeading)

                // description
                Text(description)
                    .font(.body)
                    .foregroundColor(Color("text"))
                    .padding()
                    .frame(maxWidth: 350, alignment: .leading)
                    .multilineTextAlignment(.leading)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 100, maxHeight: .infinity, alignment: .center)

            // skip top-right button
            SkipOnboardingButton()
                .padding(.trailing, 30)
                .padding(.top, 50)
                .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .topTrailing)
        }
    }
}

struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardView(image: "Onboard1", title: "Welcome to Alchemist", description: "Your Go-To Skyrim Alchemy Library")
            .preferredColorScheme(.dark)
    }
}
