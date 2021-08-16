//
//  StartButtonView.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 04/05/1400 AP.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    @State var start = UnitPoint(x: 0, y: -2)
    @State var end = UnitPoint(x: 4, y: 0)
    
    let timer = Timer.publish(every: 1, on: .main, in: .default).autoconnect()
    let colors = [Color("hotPink"), Color("deepBlue"), Color("turquoise"), Color("yellow"), Color("purpleBlue")]
    
    var body: some View {
        Button(action: {
            print("Exit Onboarding")
            isOnboarding = false
        }, label: {
            HStack{
                Text("Begin Brewing")
            }
            .padding(.horizontal, 56)
            .padding(.vertical, 20)
            .background(LinearGradient(gradient: Gradient(colors: colors), startPoint: start, endPoint: end)
                            .cornerRadius(20)
                            .animation(Animation.easeInOut(duration: 6).repeatForever())
                            .onReceive(timer, perform: { _ in
                                
                                self.start = UnitPoint(x: 4, y: 0)
                                self.end = UnitPoint(x: 0, y: 2)
                                self.start = UnitPoint(x: -4, y: 20)
                                
                            }))
            .cornerRadius(30)
            .accentColor(Color.white)
            
        }).shadow(radius: 10)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
