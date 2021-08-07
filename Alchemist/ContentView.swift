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
                        .fontWeight(.black)
                        .font(.system(size: 30))
                        .foregroundColor(Color("text"))
                }.frame(height:60, alignment: .leading)
                .padding(.leading, 36)
                .padding(.top, 50)
                
                    SearchBar(text: $searchText)
                        .padding()
                    
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
    }
}
