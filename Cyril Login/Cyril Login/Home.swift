//
//  Home.swift
//  Cyril Login
//
//  Created by RichK on 6/8/20.
//  Copyright © 2020 Rich Kummer. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Image(systemName: "gear")
                    .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .padding(.leading, 40)
                        .padding(.top, 20)
                    Spacer()
                }
                Spacer()
                LottieLogin()
                HStack {
                    Text("File")
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .padding(.trailing, -8)
                        .foregroundColor(.white)
                    Text("Stork")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                }
                VStack {
                    Text("Sharing files has never been easier")
                        .foregroundColor(.white)
                        .padding(.top, 10)
                }
                .padding(.bottom, 50)
                
                VStack {
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "folder.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                                .padding(.leading, 30)
                            Text("New Folder")
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.leading, 10)
                            Spacer()
                        }
                    }
                    .frame(width: 340, height: 50)
                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(color: Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)).opacity(0.3), radius: 20, x: 0, y: 10)
                    Button(action: {}) {
                            HStack {
                                Image(systemName: "tray.and.arrow.down.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                                    .padding(.leading, 30)
                                Text("Open Folder")
                                    .font(.system(size: 18))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding(.leading, 10)
                                Spacer()
                            }
                        }
                        .frame(width: 340, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(20)
                    .shadow(color: Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)).opacity(0.3), radius: 20, x: 0, y: 10)
                        .padding(.top, 10)
                }
                .padding(.top, 20)
                
                VStack {
                    Button(action: {}) {
                        Text("Learn more")
                        .underline()
                            .font(.system(size: 18))
                            .foregroundColor(.white)
                            .padding(.top, 15)
                    }
                    Text("Developed and designed by Rich 2020")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .padding(.top, 10)
                }
                Spacer()
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
