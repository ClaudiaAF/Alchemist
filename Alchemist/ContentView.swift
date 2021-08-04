//
//  ContentView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 28/04/1400 AP.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var dungeon: Dungeon
    
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
        
            if dungeon.showingPotion == false && dungeon.selectedPotion == nil {
                
                VStack(alignment: .leading){
                HStack{
                    Text("Alchemy Recipes")
                        .foregroundColor(.white)
                        .fontWeight(.black)
                        .font(.system(size: 30))
                }.frame(height:60, alignment: .leading)
                .padding(.leading, 36)
                .padding(.top, 50)
                
                SearchBar()
                
                HStack{
                    Text("Health")
                        .foregroundColor(.white)
                        .fontWeight(.black)
                        .font(.system(size: 22))
                } .padding(.top)
                .padding(.leading, 36)
                .padding(.bottom)
                
                HealthGridView()                    
                    .frame(height:200)
                    .padding(.bottom)
                
                HStack{
                    Text("Restoration")
                        .foregroundColor(.white)
                        .fontWeight(.black)
                        .font(.system(size: 22))
                } .padding(.top)
                .padding(.leading, 36)
                .padding(.bottom)
                
                HealthGridView()
                    .frame(height:200)
                
                
                }
            } else {
                ItemView()
            }
    } .ignoresSafeArea(.all)
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Dungeon())
    }
}
