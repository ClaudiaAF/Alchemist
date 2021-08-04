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
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "gear")
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
