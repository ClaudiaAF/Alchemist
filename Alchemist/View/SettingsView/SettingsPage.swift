//
//  SettingsPage.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 06/05/1400 AP.
//

import SwiftUI

struct SettingsPage: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isDarkMode") var isDarkMode = true
    
    var body: some View {
            NavigationView{
                ScrollView(.vertical, showsIndicators: true){
                    
                    //about section
                    GroupBox(label: HStack{
                        Text("About")
                        Spacer()
                        Image(systemName: "info.circle")
                    }, content: {
                        Text("This is the nerdiest app ever")
                            .padding()
                            .multilineTextAlignment(.leading)
                    })
                    .padding()
                    
                    Spacer()
                    
                    GroupBox(){
                        DisclosureGroup("Developer Info"){
                            Divider().padding(.vertical, 2)
                            
                            HStack{
                                Text("Version")
                                Spacer()
                                Text("1.0.0")
                            }
                            
                            Divider().padding(.vertical, 2)
                            
                            HStack{
                                Text("Developed by")
                                Spacer()
                                Text("Claudia Ferreira")
                            }
                        }
                        
                        Spacer()
                        
                    }.padding()
                    
                    //Link
                    GroupBox(){
                        HStack{
                            Text("Source Code")
                            Spacer()
                            Link(destination: URL(string: "https://www.apple.com")!, label: {
                                Text("Github")
                            })
                            Image(systemName: "arrow.up.right.square")
                        }
                    }.padding()
                    
                    //dark and light mode
                    Picker("Mode", selection: $isDarkMode){
                        Text("Light")
                            .tag(false)
                        Text("Dark")
                            .tag(true)
                    }
                    .pickerStyle(SegmentedPickerStyle()).padding()
                    
                }
                    .navigationTitle("Settings")
                    .navigationBarItems(trailing: Button(action: {print("Clicked")
                        //close settings page
                        presentationMode.wrappedValue.dismiss()
                        
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.title)
                    }))
            }
            .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

struct SettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPage()
            .background(Color("offBlack").ignoresSafeArea(.all))
    }
}
