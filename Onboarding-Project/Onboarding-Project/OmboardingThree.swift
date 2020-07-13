//
//  OmboardingThree.swift
//  Onboarding-Project
//
//  Created by RichK on 7/13/20.
//  Copyright © 2020 Rich Kummer. All rights reserved.
//

import SwiftUI

import SwiftUI

struct OnboardingThree: View {
    var body: some View {
        VStack {
            VStack {
                Image("Image-three")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .padding(.bottom, 50)
                
                Text("Get your project to launch")
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    .padding(.bottom, 20)
                
                
                Text("Get feedback, iterate, and launch your product all in one environment. Or start five never ending projects.")
                        .font(.system(size: 17, weight: .medium, design: .rounded))
                    .multilineTextAlignment(.center)
                    .lineSpacing(3)
                    .padding(.horizontal, 20)
                
            }
        }
    }
}

struct OnboardingThree_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingThree()
    }
}
