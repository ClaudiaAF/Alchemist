//
//  SkipOnboardingButton.swift
//  Alchemist
//
//  Created by Claudia Ferreira on 22/05/1400 AP.
//

import SwiftUI

struct SkipOnboardingButton: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?

    var body: some View {
        Button(action: {
            print("Exit Onboarding")
            isOnboarding = false
        }, label: {
            Text("Skip")
                .accentColor(Color("text"))
                .font(.system(size: 25))
        })
    }
}

struct SkipOnboardingButton_Previews: PreviewProvider {
    static var previews: some View {
        SkipOnboardingButton()
            .previewLayout(.sizeThatFits)
    }
}
