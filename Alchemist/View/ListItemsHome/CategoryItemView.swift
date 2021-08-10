//
//  CategoryItemView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 03/05/1400 AP.
//

import SwiftUI

struct CategoryItemView: View {
    var potions: PotionsModel
        
    var body: some View {
        ZStack{
            RoundedRectangle()
                .frame(width: 350, height: 200, alignment: .center)
                .foregroundColor(Color("lightGrey"))
                .shadow(color: .black, radius: 10, x: -2, y: 2)
            VStack{
                HStack{
                    Image(potions.image)
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50, alignment: .top)
                }.padding()
                
                    Text(potions.name)
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                        .foregroundColor(Color("text"))
                
                    Text(potions.description)
                        .font(.system(size: 12))
                        .fontWeight(.regular)
                        .frame(width: 320)
                        .padding()
                        .foregroundColor(Color("text"))
            
            }
        }
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(potions: PotionsData[0])
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.light)
    }
}
