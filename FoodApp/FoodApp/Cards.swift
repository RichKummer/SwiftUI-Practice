//
//  Cards.swift
//  FoodApp
//
//  Created by RichK on 9/2/20.
//

import SwiftUI

struct Cards: View {
    var body: some View {
        VStack {
            Pizza()
                .padding(.bottom, 20)
            Burger()
                .padding(.top, 20)
        }
    }
}

struct Cards_Previews: PreviewProvider {
    static var previews: some View {
        Cards()
    }
}

struct Pizza: View {
    var body: some View {
        ZStack {
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Pizza")
                        .font(.system(size: 22, weight: .bold, design: .rounded))
                    Text("Mushrooms & chilli")
                        .font(.system(size: 14, weight: .medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.8156090379, green: 0.815810442, blue: 0.8115048409, alpha: 1)))
                    Text("$3.25")
                        .font(.system(size: 16, weight: .medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.4837362766, green: 0.7962843776, blue: 0.5817382932, alpha: 1)))
                }
                .padding(.leading, 40)
                Spacer()
            }
            Image("Pizza")
                .resizable()
                .frame(width: 170, height: 200)
                .offset(x: 90)
                .zIndex(10)
            
        }
        .frame(width: 335, height: 120)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.25), radius: 20, x: 0, y: 15)
    }
}

struct Burger: View {
    var body: some View {
        ZStack {
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Burger")
                        .font(.system(size: 22, weight: .bold, design: .rounded))
                    Text("Flame grilled")
                        .font(.system(size: 14, weight: .medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.8156090379, green: 0.815810442, blue: 0.8115048409, alpha: 1)))
                    Text("$6.50")
                        .font(.system(size: 16, weight: .medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.4837362766, green: 0.7962843776, blue: 0.5817382932, alpha: 1)))
                }
                .padding(.leading, 40)
                Spacer()
            }
            Image("Burger")
                .resizable()
                .frame(width: 120, height: 110)
                .offset(x: 90)
                .zIndex(10)
            
        }
        .frame(width: 335, height: 120)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.25), radius: 20, x: 0, y: 15)
    }
}
