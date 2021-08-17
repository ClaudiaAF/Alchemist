//
//  ContentView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 28/04/1400 AP.
//

import SwiftUI

struct ContentView: View {
    // potions data
    var potion: [PotionsModel] = PotionsData

    // detailed view navigation object
    @EnvironmentObject var dungeon: Dungeon

    // @state for search textfield
    @State private var searchText = ""

    var body: some View {
        ZStack {
            // background image
            Color("offBlack")
            Image("gradientBG")
                .resizable()
                .ignoresSafeArea(.all)
                .offset(y: 65)

            // if statement to show correct potions
            if dungeon.showingPotion == false && dungeon.selectedPotion == nil {
                VStack(alignment: .leading) {
                    // navbar
                    NavBarView()
                        .background(Color.clear)
                        .padding(.horizontal, 40)
                        .padding(.top, 40)
                        .accessibilityIdentifier("settingsView")

                    // searchbar
                    SearchBar(text: $searchText)
                        .padding(.horizontal, 40)
                        .padding(.top, 20)
                        .accessibilityIdentifier("searchField")

                    // vertical scroll view
                    ScrollView(.vertical) {
                        VStack(spacing: 10) {
                            ForEach(PotionsData.filter { searchText.isEmpty ? true : $0.name.contains(searchText) }) { item in

                                CategoryItemView(potions: item)
                                    .onTapGesture {
                                        withAnimation(.easeOut) {
                                            dungeon.selectedPotion = item
                                            dungeon.showingPotion = true
                                        }
                                    }.padding()
                                    .accessibilityIdentifier("detailView")
                            }
                        }
                    }.padding()
                    // end of scroll view
                }
            } else {
                ItemView()
                // show detailed view
            }
        }.ignoresSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Dungeon())
            .preferredColorScheme(.dark)
    }
}
