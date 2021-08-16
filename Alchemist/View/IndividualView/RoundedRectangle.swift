//
//  RoundedRectangle.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 13/05/1400 AP.
//

import SwiftUI

struct RoundedRectangle: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight, .bottomLeft, .bottomRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

struct RoundedRectangle_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangle()
            .previewLayout(.fixed(width: 650, height:120))
            .padding()
    }
}
