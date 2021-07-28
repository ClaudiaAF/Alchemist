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
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(Color("lightGrey"))
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
                        .foregroundColor(.white)
                
                    Text(potions.description)
                        .font(.system(size: 12))
                        .fontWeight(.regular)
                        .frame(width: 120)
                        .padding()
                        .foregroundColor(.white)
            
            }
        }
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(potions: PotionsData[0])
            .previewLayout(.sizeThatFits)
    }
}
