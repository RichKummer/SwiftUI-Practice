//
//  ContentView.swift
//  CardAnimation
//
//  Created by RichK on 7/20/20.
//  Copyright © 2020 Rich Kummer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.1285772622, green: 0.1285926104, blue: 0.1285644174, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Current Balance")
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                    .font(.system(size: 19, weight: .medium, design: .rounded))
                Text("$11,000")
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.system(size: 35, weight: .bold, design: .rounded))
                    .padding(.top, 4)
            }
            
            .offset(y: -250)
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack (spacing: 20){
                    ForEach(0..<5) { item in
                        Cards()
                    }
                }
                .padding(.leading, 15.0)
            }
                
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Cards: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4338324837, green: 0.1221195385, blue: 0.9722457528, alpha: 1)), Color(#colorLiteral(red: 0.6493701339, green: 0.410297811, blue: 0.9994302392, alpha: 1))]), startPoint: .bottomLeading, endPoint: .topTrailing)
            VStack {
                
                HStack {
                    //First four circles
                    HStack (spacing: 5){
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                    }
                    .padding(.leading, 30)
                    HStack (spacing: 5){
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                    }
                    
                    HStack (spacing: 5){
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                    }
                    
                    Text("1234")
                        .foregroundColor(.white).opacity(0.7)
                        .font(.system(size: 19, weight: .bold, design: .rounded))
                    Spacer()
                }
                .padding(.top, 25)
                
                Spacer()
                HStack {
                    Text("$1,564")
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .padding(.leading, 30)
                    Spacer()
                    
                    ZStack {
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .padding(.trailing, 40)
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white).opacity(0.7)
                    }
                }
                .padding(.bottom, 25)
            }
        }
        .frame(width: 325, height: 200)
        .cornerRadius(25)
    }
}
