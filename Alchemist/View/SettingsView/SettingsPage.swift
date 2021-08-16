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
    
    @State var start = UnitPoint(x: 0, y: -2)
    @State var end = UnitPoint(x: 4, y: 0)
    
    let timer = Timer.publish(every: 1, on: .main, in: .default).autoconnect()
    let colors = [Color("hotPink"), Color("deepBlue"), Color("turquoise"), Color("yellow"), Color("purpleBlue")]
    
    @State var expand = false
    
    var body: some View {
            NavigationView{
                ScrollView(.vertical, showsIndicators: true){
                    
                    //about section
                    ZStack{
                        
                        Text("Alchemist is a Skyrim-inspired applicaion with its primary use serving as a recipe book of alchemy potions and poisons that are craftable in-game.")
                            .multilineTextAlignment(.center)
                            .frame(width:350, alignment: .center)
                        
                    }.padding(.top, 50)
                    
                    HStack{
                    ZStack{
                        Rectangle()
                            .frame(width: 340, height: 30, alignment: .center)
                            .cornerRadius(30)
                            .shadow(radius: 15)
                            .padding()
                            .overlay(LinearGradient(gradient: Gradient(colors: colors), startPoint: start, endPoint: end)
                                        .cornerRadius(20)
                                        .animation(Animation.easeInOut(duration: 6).repeatForever())
                                        .onReceive(timer, perform: { _ in
                                            
                                            self.start = UnitPoint(x: 4, y: 0)
                                            self.end = UnitPoint(x: 0, y: 2)
                                            self.start = UnitPoint(x: -4, y: 20)
                                            
                                        })
                            )
                        
                        HStack(alignment: .firstTextBaseline){
                            Text("Source Code")
                                .padding(.trailing, 140)
                                .padding(.leading, -10)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color.white)
                            Link(destination: URL(string: "https://github.com/ClaudiaAF/Alchemist.git")!, label: {
                                Text("Github")
                                    .foregroundColor(Color.white)
                                
                            })
                            Image(systemName: "arrow.up.right.square")
                            
                        }
                    }
                    }.padding(.top, 30)
                    
                    Picker("Mode", selection: $isDarkMode){
                        Text("Light")
                            .tag(false)
                        Text("Dark")
                            .tag(true)
                            .accessibilityIdentifier("darkMode")
                    }
                    .pickerStyle(SegmentedPickerStyle()).padding()
                    .animation(.spring())
                    .padding(.top, 30)
                    .frame(width: 330)
                    
                    VStack{
                        HStack{
                            Text("Developer Information")
                                .foregroundColor(Color("text"))
                                .fontWeight(.black)
                                .padding()
                            Image(systemName: expand ? "chevron.up" : "chevron.down")
                                .resizable()
                                .frame(width:13, height:6)
                                .foregroundColor(Color("text"))
                                .padding()
                            
                        }.onTapGesture {
                            self.expand.toggle()
                        }
                        if expand {
                            Button(action: {
                                print("1")
                                self.expand.toggle()
                            }) {
                                Text("Version 1.0.0")
                                    .padding()
                            }.foregroundColor(Color("text"))
                            
                            Button(action: {
                                print("2")
                                self.expand.toggle()
                            }) {
                                Text("Developed by Claudia Ferreira")
                                    .padding()
                            }.foregroundColor(Color("text"))
                        }
                    }
                    .padding(10)
                    .overlay(
                        RoundedRectangle()
                            .stroke(Color("text"))
                    )
                    .shadow(radius: 5)
                    .animation(.spring())
                    .padding(.top, 170)
                    
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
