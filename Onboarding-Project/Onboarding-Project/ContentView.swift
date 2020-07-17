//
//  ContentView.swift
//  Onboarding-Project
//
//  Created by RichK on 7/13/20.
//  Copyright © 2020 Rich Kummer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var SlideGesture = CGSize.zero
    @State var SlideOne = false
    @State var SlideOnePrevious = false
    @State var SlideTwo = false
    @State var SlideTwoPrevious = false
    
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            OnboardingThree()
                .offset(x: SlideGesture.width)
                .offset(x: SlideTwo ? 0 : 500)
                .animation(.spring())
            
                .gesture(
                        DragGesture().onChanged() { value in
                            self.SlideGesture = value.translation
                    }
                        .onEnded { value in
                            if self.SlideGesture.width > 150 {
                                self.SlideTwo = false
                                self.SlideTwoPrevious = true
                            }
                            self.SlideGesture = .zero
                        }
                )
                
            
            
            OnboardingTwo()
                .offset(x: SlideGesture.width)
                .offset(x: SlideOne ? 0 : 500)
                .animation(.spring())
                .offset(x: SlideOnePrevious ? 500 : 0)
                .offset(x: SlideTwo ? -500 : 0)
            
                .gesture(
                    DragGesture().onChanged() { value in
                        self.SlideGesture = value.translation
                }
                    .onEnded { value in
                        if self.SlideGesture.width < -150 {
                            self.SlideOne = true
                            self.SlideTwo = true
                        }
                        if self.SlideGesture.width > 150 {
                            self.SlideOnePrevious = true
                            self.SlideOne = false
                        }
                        
                        self.SlideGesture = .zero
                    }
            )
            
            OnboardingOne()
                .offset(x: SlideGesture.width)
                .offset(x: SlideOne ? -500 : 0)
                .animation(.spring())
                
                .gesture(
                    DragGesture().onChanged() { value in
                        self.SlideGesture = value.translation
                }
                    .onEnded { value in
                        if self.SlideGesture.width < -150 {
                            self.SlideOne = true
                            self.SlideOnePrevious = false
                        }
                        self.SlideGesture = .zero
                    }
            )
            
            VStack {
                Spacer()
                ZStack {
                    VStack {
                        Text("Continue")
                                .font(.system(size: 17, weight: .medium, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.06274509804, green: 0.4470588235, blue: 0.3529411765, alpha: 1)))
                                
                        }
                        .frame(width: 140, height: 40)
                        .background(Color(#colorLiteral(red: 0.2156862745, green: 0.8941176471, blue: 0.6901960784, alpha: 1)))
                        .cornerRadius(20)
                        .animation(.spring())
                        .offset(x: SlideTwo ? 0 : 500)
                
                    VStack {
                        Text("Skip")
                            .font(.system(size: 17, weight: .medium, design: .rounded))
                            .foregroundColor(Color.black)
                    }
                    .frame(width: 140, height: 40)
                    .background(Color(#colorLiteral(red: 0.8729317269, green: 0.8764658635, blue: 0.88, alpha: 1)))
                    .cornerRadius(20)
                    .animation(.spring())
                    .offset(x: SlideTwo ? -500 : 0)
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
