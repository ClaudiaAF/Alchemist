//
//  SearchBar.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 06/05/1400 AP.
//

import SwiftUI

struct SearchBar: View {
    @State var searchText = ""
    
    var body: some View {
        VStack(alignment:.leading){
            ZStack{
                Rectangle()
                    .foregroundColor(Color("lightGrey"))
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Search...", text: $searchText)
                }
                .foregroundColor(Color("text"))
                .padding(.leading, 13)
            }
            .frame(height: 40)
            .cornerRadius(13)
            .padding()
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
