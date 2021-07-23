//
//  ContentView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 28/04/1400 AP.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("LogoTransp")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300, alignment: .top)
                
                //TODO: Replace with glowing text
                Text("Alchemist")
                    .font(.system(size: 60, weight: .black))
                    .foregroundColor(.white)
                    .padding()
                
                Text("Your Go-To Skyrim Alchemy Library")
                    .font(.system(size: 20, weight: .regular))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
