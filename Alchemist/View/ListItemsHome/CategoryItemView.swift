//
//  CategoryItemView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 03/05/1400 AP.
//

import SwiftUI

struct CategoryItemView: View {
        
    var body: some View {
        Rectangle()
            .frame(width: 250, height: 400)
            .cornerRadius(30)
            .foregroundColor(.gray)
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView()
            .previewLayout(.sizeThatFits)
    }
}
