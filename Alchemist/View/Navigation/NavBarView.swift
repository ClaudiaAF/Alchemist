//
//  NavBarView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 03/05/1400 AP.
//

import SwiftUI

struct NavBarView: View {
    // @state for settings button
    @State private var isShowingSettings = false

    var body: some View {
        HStack {
            Text("Recipes")
                .fontWeight(.black)
                .font(.system(size: 36))
                .foregroundColor(Color("text"))
                .padding()

            Spacer()

            Button(action: {
                isShowingSettings = true
            }) {
                Image(systemName: "gear")
                    .foregroundColor(Color("text")).font(.title)
            }
            .sheet(isPresented: $isShowingSettings) {
                SettingsPage()
            }
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
