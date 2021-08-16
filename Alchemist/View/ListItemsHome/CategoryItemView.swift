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
                .frame(width: 370, height: 170, alignment: .center)
                .foregroundColor(Color("greyish"))
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: -2, y: 2)
            HStack{
                
                    Image(potions.image)
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 200, height: 200, alignment: .top)
                VStack(alignment:.leading){
                
                    Text(potions.name)
                        .fontWeight(.bold)
                        .font(.title2)
                        .foregroundColor(Color("text"))
                        .accessibilityIdentifier("potionItem")
                
                    Text(potions.description)
                        .font(.system(size: 12))
                        .fontWeight(.regular)
                        .frame(width: 180)
                        .padding(.vertical)
                        .foregroundColor(Color("text"))
                }.offset(x:-40)
            
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
