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
        VStack{
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200, alignment: .center)
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            
            Text(description)
                .font(.body)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth:480)
            
            StartButtonView()
            
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color("offBlack").ignoresSafeArea(.all))
    }
}

struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardView(image: "LogoTransp", title: "Welcome to Alchemist", description: "Your Go-To Skyrim Alchemy Library")
            
    }
}
