//
//  ContentView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 28/04/1400 AP.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("offBlack")
            
        VStack(spacing: 0){
            NavBarView()
                .background(Color("offBlack"))
                .padding(.horizontal, 15)
                .padding(.bottom)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            Spacer()
        }
            VStack(alignment: .leading){
                HStack{
                    Text("Alchemy Recipes")
                        .foregroundColor(.white)
                        .fontWeight(.black)
                        .font(.system(size: 30))
                }.frame(height:60, alignment: .leading)
                .padding(.leading, 36)
                
                SearchBar()
                    .padding()
                
                HStack{
                    Text("Health")
                        .foregroundColor(.white)
                        .fontWeight(.black)
                        .font(.system(size: 22))
                } .padding(.top)
                .padding(.leading, 36)
                
                
            }
    } .ignoresSafeArea(.all)
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
