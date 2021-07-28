//
//  CategoryItemView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 03/05/1400 AP.
//

import SwiftUI

struct CategoryItemView: View {
    @State var label: String
        
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 150, height: 200)
                .cornerRadius(30)
                .foregroundColor(.gray)
            Text(label)
        }
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(label: String)
            .previewLayout(.sizeThatFits)
    }
}
