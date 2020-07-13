//
//  ContentView.swift
//  Onboarding-Project
//
//  Created by RichK on 7/13/20.
//  Copyright © 2020 Rich Kummer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            OnboardingOne()
            
            OnboardingTwo()
                .offset(x: 500)
            
            OnboardingThree()
                .offset(x: 500)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
