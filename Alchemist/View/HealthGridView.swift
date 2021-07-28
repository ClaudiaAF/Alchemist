//
//  HealthGridView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 06/05/1400 AP.
//

import SwiftUI

struct HealthGridView: View {
    var body: some View {
        VStack{
            Divider()
            ScrollView(.horizontal){
                HStack(spacing: 10){
                    ForEach(0..<10) { index in
                        CategoryItemView(label: "\(index)")
                    }
                }.padding()
            }.frame(height: 210)
            Divider()
            Spacer()
        }
    }
}

struct HealthGridView_Previews: PreviewProvider {
    static var previews: some View {
        HealthGridView()
            .previewLayout(.sizeThatFits)
    }
}
