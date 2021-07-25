//
//  NavBarView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 03/05/1400 AP.
//

import SwiftUI

struct NavBarView: View {
    
    @State private var isAnimated: Bool = false
    
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Image(systemName: "gear")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)){
                        isAnimated.toggle()
                    }
                })
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "book")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
