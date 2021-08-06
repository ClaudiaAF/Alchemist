//
//  HeaderDetail.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 13/05/1400 AP.
//

import SwiftUI

struct HeaderDetail: View {
    
    @EnvironmentObject var dungeon: Dungeon
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Health Potion")
                .foregroundColor(.white)
            
            Text(dungeon.selectedPotion?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color("text"))
        })
            
    }
}

struct HeaderDetail_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetail()
            .environmentObject(Dungeon())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color("offBlack"))
    }
}
