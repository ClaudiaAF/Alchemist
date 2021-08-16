//
//  NavBarDetailView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 12/05/1400 AP.
//

import SwiftUI

struct NavBarDetailView: View {
    
    @EnvironmentObject var dungeon: Dungeon
    @State private var isShowingSettings = false
    
    var body: some View {
        HStack{
            Button(action:{
                withAnimation(.easeIn){
                    dungeon.selectedPotion = nil
                    dungeon.showingPotion = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(Color("text"))
            })
            Text("Recipes")
                .foregroundColor(Color("text"))
            }
        }
    }

struct NavBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarDetailView()
            .environmentObject(Dungeon())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
