//
//  SearchBar.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 06/05/1400 AP.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text : String
    @State private var isEditing = false
    
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color("text"))
                .padding(.leading, 8)
            TextField("Search ...", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .padding(.vertical, 10)
                .background(Color("greyish"))
                .cornerRadius(30)
                .overlay(
                    HStack{
                        if isEditing {
                            Button(action: {
                                self.text = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                            }.padding(.leading, 220)
                        }
                    })
                .onTapGesture {
                    self.isEditing = true
                }
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
                }) {
                    Text("Cancel")
                        .accentColor(Color("text"))
                }
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
            .previewLayout(.sizeThatFits)
            .padding()
            .preferredColorScheme(.dark)
    }
}
