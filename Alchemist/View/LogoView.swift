//
//  LogoView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 03/05/1400 AP.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4){
            Image("LogoTransp")
                .resizable()
                .scaledToFit()
                .frame(width: 57, height: 57, alignment: .center)
    }
}
}
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

