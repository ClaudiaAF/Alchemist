//
//  SettingsPage.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 06/05/1400 AP.
//

import SwiftUI

struct SettingsPage: View {
    var body: some View {
        ZStack{
            Color("offBlack")
            VStack(alignment: .trailing){
                HStack{
                    Text("Settings")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .fontWeight(.black)
                        .padding(40)
                    Spacer()
                    Image(systemName: "xmark")
                        .padding(40)
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                }
                HStack{
                    Text("Style")
                        .foregroundColor(.gray)
                        .font(.system(size: 23))
                    Spacer()
                }.padding(.leading, 40)
                
                HStack{
                    Image(systemName: "lightbulb.fill")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                    Text("Light Mode")
                        .foregroundColor(.white)
                        .font(.system(size: 22))
                    Toggle(isOn: .constant(false), label: {
                        Text("")
                    })
                    Spacer()
                }.padding(30)
                
                HStack{
                    Image(systemName: "character.book.closed")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                    Text("Minimalist View")
                        .foregroundColor(.white)
                        .font(.system(size: 22))
                    Toggle(isOn: .constant(false), label: {
                        Text("")
                    })
                    Spacer()
                }.padding(30)
                
                HStack{
                    Text("App Information")
                        .foregroundColor(.gray)
                        .font(.system(size: 23))
                    Spacer()
                }.padding(.leading, 40)
                
                HStack{
                    Text("Alchemist is library app containing all of the potion and poison recipes that are craftable within The Elder Scrolls V: Skyrim.")
                        .foregroundColor(.white)
                        .font(.system(size: 22))
                        .padding()
                    Spacer()
                }.padding(.leading, 30)
                .padding(.top, 15)
                
                Spacer()
            }
            
        }
    }
}

struct SettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPage()
            .background(Color("offBlack").ignoresSafeArea(.all))
    }
}
