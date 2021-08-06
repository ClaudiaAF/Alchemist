//
//  ItemView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 06/05/1400 AP.
//

import SwiftUI

struct ItemView: View {
    
    @EnvironmentObject var dungeon: Dungeon
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //navbar
            
            NavBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //header
            HeaderDetail()
                .padding(.horizontal)
            
            //detail top section
            TopSectionDetail()
                .padding()
                .zIndex(1)
            
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, content: {
                //description
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(dungeon.selectedPotion?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                })
                
                Spacer()
            })
            .frame(width: 380)
            .padding()
            .background(
                Image("Glass")
                    .resizable()
                    .clipShape(RoundedRectangle())
                    .padding(.top, -105)
            )
          
        })
        .background(
            Image("Bubbles")
                .resizable()
        )
        .zIndex(0)
        .ignoresSafeArea(.all)
        
        }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
            .previewLayout(.fixed(width: 405, height: 812))
            .environmentObject(Dungeon())
    }
}
