//
//  Onboarding-One.swift
//  Onboarding-Project
//
//  Created by RichK on 7/13/20.
//  Copyright © 2020 Rich Kummer. All rights reserved.
//

import SwiftUI

struct OnboardingOne: View {
    var body: some View {
        VStack {
            VStack {
                Image("Image-one")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .padding(.bottom, 50)
                
                Text("Find your side hustle crew")
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    .padding(.bottom, 20)
                
                
                Text("Keep in touch with your tribe by joining or creating a new group based on your hobbies or interests.")
                    .font(.system(size: 17, weight: .medium, design: .rounded))
                    .multilineTextAlignment(.center)
                    .lineSpacing(3)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 30)
                
            }
        }
    }
}

struct OnboardingOne_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingOne()
    }
}
