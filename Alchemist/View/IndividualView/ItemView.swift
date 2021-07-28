//
//  ItemView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 06/05/1400 AP.
//

import SwiftUI

struct ItemView: View {
    var body: some View {
        ZStack{
            Color("offBlack")
                .ignoresSafeArea(.all)
            VStack{
                HStack{
                    Image(systemName: "arrow.left")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .padding()
                    Text("Back")
                        .foregroundColor(.white)
                        .font(.system(size: 23))
                    Spacer()
                        
                }
                
                HStack{
                    Image(systemName: "photo")
                        .foregroundColor(.white)
                        .font(.system(size: 150))
                        .padding()
                }
                
                HStack{
                    Text("Restore Health Potion")
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .padding(30)
                    Spacer()
                }
                
                HStack{
                    Text("Regain a certain amount of HP when ingesting")
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .padding(30)
                    Spacer()
                }
                
                HStack{
                    Text("Ingredients")
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .padding(20)
                    Spacer()
                }
                
                Rectangle()
                    .frame(width: 350, height: 50)
                    .foregroundColor(Color("lightGrey"))
                    .cornerRadius(10)
                
                Rectangle()
                    .frame(width: 350, height: 50)
                    .foregroundColor(Color("lightGrey"))
                    .cornerRadius(10)
                    .padding()
                
                Rectangle()
                    .frame(width: 350, height: 50)
                    .foregroundColor(Color("lightGrey"))
                    .cornerRadius(10)
            }
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
