//
//  ContentView.swift
//  Travel-App
//
//  Created by RichK on 7/26/20.
//  Copyright © 2020 Rich Kummer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Header()
            
            Categories()
                .padding(.top, 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack (spacing: 30){
                    Card1()
                    
                    Card2()
                    
                    Card3()
                }
                .padding(.leading, 30)
            }
            .padding(.top, 20)
            
            
            
            VStack(alignment: .leading) {
                Text("Japanese Food")
                    .font(.system(size: 34, weight: .bold, design: .rounded))
                
                
                HStack (spacing: 20) {
                        Card4()
                        Card5()
                        Card6()
                    
                }
            }
            .padding(.top, 30)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Text("Discover")
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .padding(.leading, 30)
            Spacer()
            Image(systemName: "magnifyingglass")
                .font(.system(size: 28, weight: .light))
                .padding(.trailing, 30)
        }
    }
}

struct Categories: View {
    var body: some View {
        HStack (spacing: 50) {
            VStack(alignment: .leading) {
                Text("Popular")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .foregroundColor(Color.orange)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 20, height: 6)
                    .foregroundColor(Color.orange)
                    .padding(.top, -3)
            }
            VStack {
                Text("Rating")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(Color.gray)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 20, height: 6)
                    .opacity(0)
                    .padding(.top, -3)
            }
            VStack {
                Text("Recent")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(Color.gray)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 20, height: 6)
                    .opacity(0)
                    .padding(.top, -3)
            }
            Spacer()
        }
        .padding(.leading, 30)
    }
}

struct Card1: View {
    var body: some View {
        ZStack {
            Image("fuji1")
                .resizable()
                .frame(width: 250, height: 350)
                .cornerRadius(20)
            
            VStack(alignment: .leading) {
                Text("Mount Fuji")
                    .foregroundColor(Color.white)
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                
                Text("Fujinomiya, Japan")
                    .foregroundColor(Color(#colorLiteral(red: 0.9053056222, green: 0.9053056222, blue: 0.9053056222, alpha: 1)))
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .padding(.top, 5)
                
            }
            .offset(x: -20, y: 110)
            
        }
    }
}

struct Card2: View {
    var body: some View {
        ZStack {
            Image("fuji2")
                .resizable()
                .frame(width: 250, height: 350)
                .cornerRadius(20)
            
            VStack(alignment: .leading) {
                Text("Mount Fuji")
                    .foregroundColor(Color.white)
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                
                Text("Shibuya-ku, Japan")
                    .foregroundColor(Color(#colorLiteral(red: 0.9053056222, green: 0.9053056222, blue: 0.9053056222, alpha: 1)))
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .padding(.top, 5)
                
            }
            .offset(x: -20, y: 110)
            
        }
    }
}

struct Card3: View {
    var body: some View {
        ZStack {
            Image("fuji1")
                .resizable()
                .frame(width: 250, height: 350)
                .cornerRadius(20)
            
            VStack(alignment: .leading) {
                Text("Mount Fuji")
                    .foregroundColor(Color.white)
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                
                Text("Fujinomiya, Japan")
                    .foregroundColor(Color(#colorLiteral(red: 0.9053056222, green: 0.9053056222, blue: 0.9053056222, alpha: 1)))
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .padding(.top, 5)
                
            }
            .offset(x: -20, y: 110)
            
        }
    }
}

struct Card4: View {
    var body: some View {
        ZStack {
            VStack {
                Text("")
            }
            .frame(width: 90, height: 140)
            .background(Color(#colorLiteral(red: 0.9486040609, green: 0.9486040609, blue: 0.9486040609, alpha: 1)))
            .cornerRadius(20)
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.2), radius: 20, x: 0, y: 20)
            .offset(y: 8)
            
            VStack {
                Image("sushi")
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("Sushi")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .padding(.top, 10)
                
            }
            .frame(width: 100, height: 140)
            .background(Color.white)
            .cornerRadius(20)
        }
    }
}

struct Card5: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
            .background(Color.white)
            VStack {
                Image("ramen")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                Text("Pastries")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .padding(.top, 10)
            }
        }
        .frame(width: 100, height: 140)
    }
}

struct Card6: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                .background(Color.white)
            VStack {
                Image("sashimi")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                Text("Sashimi")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .padding(.top, 10)
                
            }
        }
        .frame(width: 100, height: 140)
    }
}
