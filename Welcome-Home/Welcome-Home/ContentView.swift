//
//  ContentView.swift
//  Welcome-Home
//
//  Created by RichK on 11/21/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var unlock = false
    
    var body: some View {
        VStack (spacing: 50) {
            Header()
            ZStack {
                ZStack {
                    Image(systemName: unlock ? "lock.open.fill" : "lock.fill")
                        .font(.system(size: 38))
                        .foregroundColor(.white)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.3), radius: 10, x: 0, y: 5)
                }
                .frame(width: 80, height: 80)
                .background(unlock ? Color(#colorLiteral(red: 0.1961133267, green: 1, blue: 0.6062136985, alpha: 1)) : Color(#colorLiteral(red: 0.4600310922, green: 0.259254992, blue: 0.8600806594, alpha: 1)))
                .cornerRadius(20)
                .shadow(color: unlock ? Color(#colorLiteral(red: 0.1538817761, green: 0.7781113133, blue: 0.5123955274, alpha: 1)).opacity(0.2) : Color(#colorLiteral(red: 0.4600310922, green: 0.259254992, blue: 0.8600806594, alpha: 1)).opacity(0.25), radius: 30, x: 0, y: 15)
                .animation(.spring())
            }
            .frame(width: 120, height: 120)
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .cornerRadius(30)
            .shadow(color: unlock ? Color(#colorLiteral(red: 0.1538817761, green: 0.7781113133, blue: 0.5123955274, alpha: 1)).opacity(0.2) : Color(#colorLiteral(red: 0.4600310922, green: 0.259254992, blue: 0.8600806594, alpha: 1)).opacity(0.3), radius: 30, x: 0, y: 20)
            .animation(.spring())
            .onTapGesture {
                self.unlock.toggle()
            }
            VStack {
                Text("Your room has been unlocked")
                    .bold()
            }
            .offset(y: -10)
            .opacity(unlock ? 1 : 0.0)
            .animation(.spring())
            BottomContent()
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
        VStack (spacing: 10){
            Image("avataaar")
                .resizable()
                .frame(width: 70, height: 70)
            Text("Welcome home,")
                .font(.system(size: 17, weight: .medium, design: .default))
                .foregroundColor(Color(#colorLiteral(red: 0.5590583086, green: 0.6062200069, blue: 0.7017894387, alpha: 1)))
            Text("Violet")
                .font(.system(size: 22, weight: .bold, design: .default))
                .foregroundColor(Color(#colorLiteral(red: 0.5308982134, green: 0.2885775566, blue: 0.9914754033, alpha: 1)))
        }
    }
}

struct BottomContent: View {
    var body: some View {
        VStack (spacing: 10) {
            Text("Unlock the Front Door")
                .font(.system(size: 19, weight: .bold, design: .default))
                .foregroundColor(Color(#colorLiteral(red: 0.21104002, green: 0.2260731161, blue: 0.2965855896, alpha: 1)))
            Text("Please unlock this door to use your home utilities")
                .font(.system(size: 17, weight: .medium, design: .default))
                .foregroundColor(Color(#colorLiteral(red: 0.5590583086, green: 0.6062200069, blue: 0.7017894387, alpha: 1)))
                .frame(width: 220)
                .multilineTextAlignment(.center)
        }
    }
}
