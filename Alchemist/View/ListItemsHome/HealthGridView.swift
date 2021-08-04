//
//  HealthGridView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 06/05/1400 AP.
//

import SwiftUI

struct HealthGridView: View {
    var potion: [PotionsModel] = PotionsData
    @EnvironmentObject var dungeon: Dungeon
    
    var body: some View {
        VStack{
            ScrollView(.horizontal){
                HStack(spacing: 10){
                        ForEach(potion){ item in
                            CategoryItemView(potions: item)
                                .onTapGesture {
                                    withAnimation(.easeOut) {
                                        dungeon.selectedPotion = item
                                        dungeon.showingPotion = true
                                    }
                                }
                                .padding()
                        }
                    }
                }.padding()
            }.frame(height: 210)
        }
    }

struct HealthGridView_Previews: PreviewProvider {
    static var previews: some View {
        HealthGridView()
            .previewLayout(.sizeThatFits)
    }
}
