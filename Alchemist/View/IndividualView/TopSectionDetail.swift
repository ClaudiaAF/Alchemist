//
//  TopSectionDetail.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 13/05/1400 AP.
//

import SwiftUI

struct TopSectionDetail: View {
    // object for detailed view navigation
    @EnvironmentObject var dungeon: Dungeon

    // @state bool for animations
    @State private var isAnimating: Bool = false

    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/, spacing: 6, content: {
            // effects
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Effect")
                    .fontWeight(.semibold)
                    .foregroundColor(Color("text"))
                    .padding(.leading, 40)

                Text(dungeon.selectedPotion?.points ?? sampleProduct.points)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color("lightGrey"))
                    .scaleEffect(1.35, anchor: .leading)
                    .padding(.leading, 40)
                    .padding(.top)
            })
                .offset(y: isAnimating ? -5 : -750)
            Spacer()

            // photo
            Image(dungeon.selectedPotion?.image ?? sampleProduct.image)
                .resizable()
                .offset(y: isAnimating ? 0 : -35)
                .frame(height: 240, alignment: .center)
        })
            .onAppear(perform: {
                withAnimation(.easeOut(duration: 0.75)) {
                    isAnimating.toggle()
                }
            })
    }
}

struct TopSectionDetail_Previews: PreviewProvider {
    static var previews: some View {
        TopSectionDetail()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Dungeon())
    }
}
