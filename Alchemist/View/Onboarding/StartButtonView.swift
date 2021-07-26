//
//  StartButtonView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 04/05/1400 AP.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        Button(action: {
            print("Exit Onboarding")
            isOnboarding = false
        }, label: {
            HStack{
                Text("Let's Go")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
            .cornerRadius(30)
            .accentColor(.white)
        })
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
