//
//  Onboarding-Two.swift
//  Onboarding-Project
//
//  Created by RichK on 7/13/20.
//  Copyright © 2020 Rich Kummer. All rights reserved.
//

import SwiftUI

struct OnboardingTwo: View {
    var body: some View {
        VStack {
            VStack {
                Image("Image-two")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .padding(.bottom, 50)
                
                Text("Keep tabs with daily updates")
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    .padding(.bottom, 20)
                
                
                Text("Receive updates and notifications about your side project. Share images, videos, and Prequel memes with your teammates.")
                        .font(.system(size: 17, weight: .medium, design: .rounded))
                    .multilineTextAlignment(.center)
                    .lineSpacing(3)
                    .padding(.horizontal, 20)
                
            }
        }
    }
}

struct OnboardingTwo_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingTwo()
    }
}
