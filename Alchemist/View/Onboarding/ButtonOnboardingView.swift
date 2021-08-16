//
//  ButtonOnboardingView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 22/05/1400 AP.
//

import SwiftUI

struct ButtonOnboardingView: View {
    var image: String
    var title: String
    var description: String
    
    var body: some View {
        ZStack{
            Image(image)
                .resizable()
                .edgesIgnoringSafeArea(.all)
                
            VStack{
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color("text"))
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 15)
                    .frame(width: 350, height: 530, alignment: .topLeading)
                
                Text(description)
                    .font(.body)
                    .foregroundColor(Color("text"))
                    .padding()
                    .frame(maxWidth:350, alignment: .leading)
                    .multilineTextAlignment(.leading)
                StartButtonView()
                    .padding(.top)
                
            }
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
        }
    }
}

struct ButtonOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonOnboardingView(image: "Onboard2", title: "Welcome to Alchemist", description: "Your Go-To Skyrim Alchemy Library")
    }
}
