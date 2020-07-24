//
//  ContentView.swift
//  Dribbble-3D-App
//
//  Created by RichK on 7/24/20.
//  Copyright © 2020 Rich Kummer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9608393312, green: 0.9526742101, blue: 0.9690598845, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack {
                HeaderTwo()
                    .padding(.top, 40)
                
                SearchTwo()
                    .padding(.vertical, 10)
                
                ButtonsTwo()
                    .padding(.vertical, 20)
                
                CardsTwo()
                    .padding(.top, 20)
                
                TaskBarTwo()
                    .offset(y: 30)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//MARK: HeaderTwo
struct HeaderTwo: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Good morning,")
                    .font(.system(size: 19, weight: .medium, design: .serif))
                    .foregroundColor(Color(#colorLiteral(red: 0.9764705882, green: 0.6862745098, blue: 0.7019607843, alpha: 1)))
                Text("Rich!")
                    .font(.system(size: 28, weight: .bold, design: .serif))
                    .foregroundColor(Color(#colorLiteral(red: 0.974581778, green: 0.6844915748, blue: 0.7024741769, alpha: 1)))
                    .padding(.top, 5)
            }
            
            Spacer()
            Image("Avatar")
                .resizable()
                .frame(width: 50, height: 50)
        }
        .padding(.horizontal, 30)
    }
}

//MARK: SearchTwo
struct SearchTwo: View {
    var body: some View {
        HStack {
            Text("Search for 3D Products!")
                .foregroundColor(.gray)
                .font(.system(size: 15))
                .padding(.leading, 20)
            Spacer()
            Image(systemName: "magnifyingglass")
                .font(.system(size: 26, weight: .medium, design: .serif))
                .foregroundColor(Color(#colorLiteral(red: 0.974581778, green: 0.6844915748, blue: 0.7024741769, alpha: 1)))
                .padding(.trailing, 20)
        }
        .frame(width: 350, height: 54)
        .background(Color.white)
        .cornerRadius(14)
    }
}

//MARK: ButtonsTwo
struct ButtonsTwo: View {
    var body: some View {
        HStack(spacing: 36){
            VStack {
                VStack {
                    Image(systemName: "clock")
                        .font(.system(size: 24))
                        .foregroundColor(.white)
                }
                .frame(width: 60, height: 60)
                .background(Color(#colorLiteral(red: 0.9764705882, green: 0.6862745098, blue: 0.7019607843, alpha: 1)))
                .cornerRadius(10)
                Text("Recent")
                    .font(.system(size: 12, weight: .bold, design: .serif))
                    .foregroundColor(Color(#colorLiteral(red: 0.9764705882, green: 0.6862745098, blue: 0.7019607843, alpha: 1)))
                    .padding(.top, 10)
            }
            VStack {
                VStack {
                    Image(systemName: "flame")
                        .font(.system(size: 24))
                        .foregroundColor(.gray)
                }
                .frame(width: 60, height: 60)
                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .cornerRadius(10)
                Text("Recent")
                    .font(.system(size: 12, weight: .bold, design: .serif))
                    .foregroundColor(.gray)
                    .padding(.top, 10)
            }
            VStack {
                VStack {
                    Image(systemName: "bolt.circle")
                        .font(.system(size: 24))
                        .foregroundColor(.gray)
                }
                .frame(width: 60, height: 60)
                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .cornerRadius(10)
                Text("Popular")
                    .font(.system(size: 12, weight: .bold, design: .serif))
                    .foregroundColor(.gray)
                    .padding(.top, 10)
            }
            VStack {
                VStack {
                    Image(systemName: "suit.diamond")
                        .font(.system(size: 24))
                        .foregroundColor(.gray)
                }
                .frame(width: 60, height: 60)
                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .cornerRadius(10)
                Text("Trending")
                    .font(.system(size: 12, weight: .bold, design: .serif))
                    .foregroundColor(.gray)
                    .padding(.top, 10)
            }
        }
    }
}

struct CardsTwo: View {
    var body: some View {
            VStack(alignment: .leading) {
                Text("Recommended Products")
                    .font(.system(size: 22, weight: .bold, design: .serif))
                    .foregroundColor(Color(#colorLiteral(red: 0.974581778, green: 0.6844915748, blue: 0.7024741769, alpha: 1)))
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (spacing: 40) {
                    VStack {
                        Image("Pokemon")
                            .resizable()
                        VStack(alignment: .leading) {
                            Text("Geometry 3D Elements")
                                .font(.system(size: 20, weight: .bold, design: .serif))
                                .foregroundColor(Color(#colorLiteral(red: 0.974581778, green: 0.6844915748, blue: 0.7024741769, alpha: 1)))
                                .padding(.horizontal, 10)
                            Text("Hold up a rectangular piece of paper and ask all the students")
                                .font(.system(size: 15, weight: .medium, design: .serif))
                                .foregroundColor(Color(#colorLiteral(red: 0.974581778, green: 0.6844915748, blue: 0.7024741769, alpha: 1)))
                                .lineLimit(3)
                                .padding(.top, 5)
                                .padding(.leading, 10)
                                .padding(.bottom, 15)
                        }
                        .frame(height: 100)
                    }
                    .frame(width: 280, height: 340)
                    .background(Color.white)
                    .cornerRadius(30)
                    
                    VStack {
                        Image("night")
                            .resizable()
                        VStack(alignment: .leading) {
                            Text("Lightning and Mood")
                                .font(.system(size: 20, weight: .bold, design: .serif))
                                .foregroundColor(Color(#colorLiteral(red: 0.974581778, green: 0.6844915748, blue: 0.7024741769, alpha: 1)))
                                .padding(.horizontal, 10)
                            Text("Abstract 3D Elements gain a new life with proper lighting techniques")
                                .font(.system(size: 15, weight: .medium, design: .serif))
                                .foregroundColor(Color(#colorLiteral(red: 0.974581778, green: 0.6844915748, blue: 0.7024741769, alpha: 1)))
                                .lineLimit(3)
                                .padding(.top, 5)
                                .padding(.leading, 10)
                                .padding(.bottom, 15)
                        }
                        .frame(height: 100)
                    }
                    .frame(width: 280, height: 340)
                    .background(Color.white)
                    .cornerRadius(30)
                    
                }
            }
        }
        .padding(.leading, 32)
    }
}

struct TaskBarTwo: View {
    var body: some View {
        HStack (spacing: 60) {
            VStack {
                Image(systemName: "house")
                    .font(.system(size: 26))
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(.white)
            }
            .padding(.bottom, 20)
            VStack {
                Image(systemName: "heart")
                    .font(.system(size: 26))
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(.white)
                    .opacity(0)
            }
            .padding(.bottom, 20)
            VStack {
                Image(systemName: "cube")
                    .font(.system(size: 26))
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(.white)
                    .opacity(0)
            }
            .padding(.bottom, 20)
            VStack {
                Image(systemName: "person")
                    .font(.system(size: 26))
                    .foregroundColor(.white)
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(.white)
                    .opacity(0)
            }
            .padding(.bottom, 20)
        }
        .frame(height: 100)
        .frame(maxWidth: .infinity)
        .background(Color(#colorLiteral(red: 0.9764705882, green: 0.6862745098, blue: 0.7019607843, alpha: 1)))
        .cornerRadius(20)
    }
}
