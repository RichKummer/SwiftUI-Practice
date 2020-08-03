//
//  ContentView.swift
//  Consultancy-App
//
//  Created by RichK on 8/3/20.
//  Copyright © 2020 Rich Kummer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack {
                //MARK: Intro
                HStack {
                    VStack(alignment: .leading) {
                        Text("Hello,")
                            .font(.system(size: 34, weight: .medium, design: .default))
                            .foregroundColor(.gray)
                        Text("Mr. Miyagi")
                            .font(.system(size: 34, weight: .bold, design: .default))
                            .foregroundColor(Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)))
                            .padding(.top, 10)
                    }
                    .padding(.leading, 30)
                    Spacer()
                    Image("avataaar")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .padding(.trailing, 30)
                }
                
                //Mark: Toggle
                VStack (alignment: .leading) {
                    Text("Let's choose your required service.")
                    
                    HStack {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Personal")
                                .foregroundColor(.white)
                                .font(.system(size: 19, weight: .regular, design: .default))
                        }
                        .frame(width: 180, height: 54)
                    .background(Color(#colorLiteral(red: 0.3803921569, green: 0.3450980392, blue: 0.9215686275, alpha: 1)))
                    .cornerRadius(14)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Text("Business")
                                    .foregroundColor(Color(#colorLiteral(red: 0.06004495174, green: 0.1818172932, blue: 0.2461327612, alpha: 1)))
                                    .font(.system(size: 19, weight: .regular, design: .default))
                            }
                            .frame(width: 180, height: 54)
                        .background(Color(#colorLiteral(red: 0.883165975, green: 0.924424036, blue: 0.9448366117, alpha: 1)))
                        .cornerRadius(14)
                    }
                        .padding(.top, 40)
                }
                .padding(.top, 10)
                
                VStack (alignment: .leading) {
                    Text("Select Service")
                        .font(.system(size: 34, weight: .bold, design: .default))
                        .foregroundColor(Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)))
                    VStack {
                        HStack (spacing: 10){
                            VStack {
                                Image(systemName: "greetingcard")
                                    .font(.system(size: 50))
                                
                                Text("Passport")
                                    .font(.system(size: 19, weight: .medium, design: .default))
                                    .offset(y: 20)
                            }
                            .frame(width: 180, height: 200)
                            .background(Color(#colorLiteral(red: 0.9777720495, green: 0.9777720495, blue: 0.9777720495, alpha: 1)))
                            .cornerRadius(20)
                            
                            VStack (spacing: 25){
                                Image(systemName: "creditcard")
                                    .font(.system(size: 50))
                                    .foregroundColor(.white)
                                
                                Text("Visa")
                                    .font(.system(size: 19, weight: .medium, design: .default))
                                    .foregroundColor(.white)
                                    .offset(y: 20)
                            }
                            .frame(width: 180, height: 200)
                            .background(Color(#colorLiteral(red: 0.9958359772, green: 0.2357582703, blue: 0.497214287, alpha: 1)))
                            .cornerRadius(20)
                        }
              
                        
                        HStack (spacing: 10) {
                            VStack {
                                Image(systemName: "greetingcard")
                                    .font(.system(size: 50))
                                
                                Text("Passport")
                                    .font(.system(size: 19, weight: .medium, design: .default))
                                    .offset(y: 20)
                            }
                            .frame(width: 180, height: 200)
                            .background(Color(#colorLiteral(red: 0.9777720495, green: 0.9777720495, blue: 0.9777720495, alpha: 1)))
                            .cornerRadius(20)
                            VStack {
                                Image(systemName: "creditcard")
                                    .font(.system(size: 50))
                                
                                Text("Visa")
                                    .font(.system(size: 19, weight: .medium, design: .default))
                                    .offset(y: 20)
                            }
                            .frame(width: 180, height: 200)
                            .background(Color(#colorLiteral(red: 0.9777720495, green: 0.9777720495, blue: 0.9777720495, alpha: 1)))
                            .cornerRadius(20)
                        }
                    }
                }
                .padding(.top, 40)
                
                HStack (spacing: 80) {
                    Image(systemName: "house")
                        .font(.system(size: 24))
                    Image(systemName: "qrcode.viewfinder")
                        .font(.system(size: 24))
                        .foregroundColor(.gray)
                    Image(systemName: "folder")
                        .font(.system(size: 24))
                        .foregroundColor(.gray)
                    Image(systemName: "person.circle")
                        .font(.system(size: 24))
                        .foregroundColor(.gray)
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
