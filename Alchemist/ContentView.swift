//
//  ContentView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 28/04/1400 AP.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("offBlack")
            
        VStack(spacing: 0){
            NavBarView()
                .background(Color("offBlack"))
                .padding(.horizontal, 15)
                .padding(.bottom)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            Spacer()
        }
    } .ignoresSafeArea(.all)
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
