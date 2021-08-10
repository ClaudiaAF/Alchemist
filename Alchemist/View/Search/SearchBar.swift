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
    
    @State var show = false
    
    var body: some View {
        
        HStack{
            if !self.show{
                Text("Alchemy Recipes")
                    .fontWeight(.black)
                    .font(.system(size: 26))
                    .foregroundColor(Color("text"))
            }
            
            Spacer()
            
            if self.show{
                TextField("Search Potions...", text: $text)
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .overlay(
                        
                        HStack{
                            Spacer()
                            if isEditing {
                                Button(action: {
                                    self.text = ""
                                }) {
                                    Image(systemName: "multiply.circle.fill")
                                        .foregroundColor(.gray)
                                        .padding()
                                }
                            }
                        })
                    .padding()
                    .onTapGesture {
                        self.isEditing = true
                    }
                
                if isEditing {
                    Button(action: {
                        self.isEditing = false
                        self.text = ""
                        
                        withAnimation{
                            self.show.toggle()
                        }
                        
                    }) {
                        Text("Cancel")
                    }
                    .padding(.trailing, 10)
                    .transition(.move(edge: .trailing))
                    .animation(.default)
                }
            } else {
                Button(action: {
                    withAnimation{
                        self.show.toggle()
                    }
                }, label: {
                    Image(systemName: "magnifyingglass")
                        .accentColor(Color ("text"))
                }) .padding(self.show ? 10 : 0)
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
