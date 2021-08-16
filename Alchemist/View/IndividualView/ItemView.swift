//
//  ItemView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 06/05/1400 AP.
//

import SwiftUI

struct ItemView: View {
    
    var potion: [PotionsModel] = PotionsData
    @EnvironmentObject var dungeon: Dungeon
    
    @State var start = UnitPoint(x: 0, y: -2)
    @State var end = UnitPoint(x: 4, y: 0)
    
    let timer = Timer.publish(every: 1, on: .main, in: .default).autoconnect()
    let colors = [Color("hotPink"), Color("deepBlue"), Color("turquoise"), Color("yellow"), Color("purpleBlue")]
    
    private var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //navbar
            
            NavBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //header
            HeaderDetail()
                .padding(.horizontal)
            
            //detail top section
            TopSectionDetail()
                .padding()
                .zIndex(1)
            
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, content: {
                //description
            ScrollView(.vertical, showsIndicators: false, content: {
                    Text(dungeon.selectedPotion?.longDescription ?? sampleProduct.longDescription)
                        .font(.system(size: 18, design: .rounded))
                        .foregroundColor(Color("lightGrey"))
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 30)
                        .padding(.top, 40)
                })
                
                HStack{
                    Text("Ingredients")
                        .fontWeight(.black)
                        .foregroundColor(Color("text"))
                        .font(.system(size: 32))
                        .padding()
                        .multilineTextAlignment(.leading)
                }.frame(width: 350, height: 50, alignment: .leading)
                
                    ScrollView(.horizontal, showsIndicators: false){
                        
                    HStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 320, height: 100, alignment: .center)
                                .cornerRadius(30)
                                .shadow(radius: 12)
                                .overlay(LinearGradient(gradient: Gradient(colors: colors), startPoint: start, endPoint: end)
                                            .cornerRadius(30)
                                            .animation(Animation.easeInOut(duration: 6).repeatForever())
                                            .onReceive(timer, perform: { _ in
                                                
                                                self.start = UnitPoint(x: 4, y: 0)
                                                self.end = UnitPoint(x: 0, y: 2)
                                                self.start = UnitPoint(x: -4, y: 20)
                                                
                                            })
                                )
                            HStack{
                                VStack(alignment: .leading){
                                        
                                        Text(dungeon.selectedPotion?.ingredient1 ?? sampleProduct.ingredient1)
                                            .padding(.trailing, 1)
                                            .padding(.vertical, 3)
                                            .lineLimit(6)
                                            .multilineTextAlignment(.leading)
                                            .font(.system(size:15))
                                            .foregroundColor(Color.white)
                                }.padding(.trailing, 40)
                                .padding(.leading,28)
                                
                                    Image(dungeon.selectedPotion?.ingredient1IMG ?? sampleProduct.ingredient1IMG)
                                        .resizable()
                                        .frame(width: 86, height: 106, alignment: .trailing)
                            }
                            
                        }.padding()
                        
                        ZStack{
                            Rectangle()
                                .frame(width: 320, height: 100, alignment: .center)
                                .cornerRadius(30)
                                .shadow(radius: 12)
                                .overlay(LinearGradient(gradient: Gradient(colors: colors), startPoint: start, endPoint: end)
                                            .cornerRadius(30)
                                            .animation(Animation.easeInOut(duration: 6).repeatForever())
                                            .onReceive(timer, perform: { _ in
                                                
                                                self.start = UnitPoint(x: 4, y: 0)
                                                self.end = UnitPoint(x: 0, y: 2)
                                                self.start = UnitPoint(x: -4, y: 20)
                                                
                                            })
                                )
                            
                                HStack{
                                    VStack(alignment: .leading){
                                            
                                            
                                            Text(dungeon.selectedPotion?.ingredient2 ?? sampleProduct.ingredient2)
                                                .padding(.trailing, 1)
                                                .padding(.vertical, 3)
                                                .lineLimit(6)
                                                .multilineTextAlignment(.leading)
                                                .font(.system(size:15))
                                                .foregroundColor(Color.white)
                                    }.padding(.trailing, 40)
                                    .padding(.leading,28)
                                    
                                        Image(dungeon.selectedPotion?.ingredient2IMG ?? sampleProduct.ingredient2IMG)
                                            .resizable()
                                            .frame(width: 86, height: 106, alignment: .trailing)
                                }
                            
                            }
                    }.padding()
                    .padding(.bottom)
                }
            })
//            .frame(width: 380)
//            .padding()
//            .background(
//                Color("greyish")
//                    .clipShape(RoundedRectangle())
//                    .padding(.top)
//
//            )
          
        })
        .background(
            Image("Bubbles")
                .resizable()
        )
        .zIndex(0)
        .ignoresSafeArea(.all)
        
        }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
            .previewLayout(.fixed(width: 405, height: 812))
            .environmentObject(Dungeon())
            .preferredColorScheme(.dark)
    }
}
