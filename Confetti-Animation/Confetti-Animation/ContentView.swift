//
//  ContentView.swift
//  Confetti-Animation
//
//  Created by RichK on 7/19/20.
//  Copyright © 2020 Rich Kummer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var celebrate = false
    
    var body: some View {
        ZStack {
            
            VStack {
                VStack {
                   LottieAnimation()
                }
                .opacity(celebrate ? 1 : 0.0)
            
            
                VStack {
                    Text("Press to celebrate!")
                        .font(.system(size: 22, weight: .bold, design: .rounded))
                        
                        .onTapGesture {
                            self.celebrate = true
                    }
                
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
