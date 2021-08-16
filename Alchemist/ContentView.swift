//
//  ContentView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 28/04/1400 AP.
//

import SwiftUI

struct ContentView: View {
    
    var potion: [PotionsModel] = PotionsData
    
    
    @EnvironmentObject var dungeon: Dungeon
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack{
            
            Color("offBlack")
            Image("gradientBG")
                .resizable()
                .ignoresSafeArea(.all)
                .offset(y:65)
                
            
            
            if dungeon.showingPotion == false && dungeon.selectedPotion == nil {
                
                VStack(alignment: .leading){
                    
                    NavBarView()
                        .background(Color.clear)
                        .padding(.horizontal, 40)
                        .padding(.top, 40)
                        .accessibilityIdentifier("settingsView")
                
                    SearchBar(text: $searchText)
                        .padding(.horizontal, 40)
                        .padding(.top, 20)
                        .accessibilityIdentifier("searchField")
                    
                    ScrollView(.vertical){
                        VStack(spacing: 10){
                                ForEach(PotionsData.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { item in
                                    
                                    CategoryItemView(potions:item)
                                        .onTapGesture {
                                            withAnimation(.easeOut){
                                                dungeon.selectedPotion = item
                                                dungeon.showingPotion = true
                                            }
                                        }.padding()
                                        .accessibilityIdentifier("detailView")
                                }
                            }
                        }.padding()
                
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
            .preferredColorScheme(.dark)
    }
}
