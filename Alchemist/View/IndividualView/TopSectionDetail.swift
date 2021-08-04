//
//  TopSectionDetail.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 13/05/1400 AP.
//

import SwiftUI

struct TopSectionDetail: View {
    
    @EnvironmentObject var dungeon: Dungeon
    @State private var isAnimating: Bool = false
    
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 6, content: {
            //hp points
            VStack(alignment: .leading, spacing: 6, content: {
                Text("HP")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.leading, 60)
                
                Text(dungeon.selectedPotion?.points ?? sampleProduct.points)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .scaleEffect(1.35, anchor: .leading)
                    .padding(.leading, 60)
            })
            .offset(y: isAnimating ? -5: -750)
            Spacer()
            //photo
            Image(dungeon.selectedPotion?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        })
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)){
                isAnimating.toggle()
            }
        })
        
    }
}

struct TopSectionDetail_Previews: PreviewProvider {
    static var previews: some View {
        TopSectionDetail()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Dungeon())
    }
}
