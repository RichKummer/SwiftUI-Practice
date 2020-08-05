//
//  Lightswitch.swift
//  Neumorph-Practice
//
//  Created by RichK on 8/5/20.
//

import SwiftUI

struct Lightswitch: View {
    var body: some View {
        HStack {
            LightButton()
                
            Spacer()
            PlusButton()
        }
        .padding(.horizontal, 15)
    }
}

struct Lightswitch_Previews: PreviewProvider {
    static var previews: some View {
        Lightswitch()
    }
}

//MARK: LightButton
struct LightButton: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Light")
                    .font(.system(size: 22, weight: .medium, design: .default))
                    .foregroundColor(.white)
                Text("Connected")
                    .font(.system(size: 15, weight: .medium, design: .default))
                    .foregroundColor(Color(#colorLiteral(red: 0.7857988944, green: 0.8164139397, blue: 0.9598672945, alpha: 1)))
                    .padding(.top, 5)
            }
            .padding(.leading, 20)
            Spacer()
            VStack {
                VStack {
                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                        .frame(width: 60, height: 38)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.15), radius: 10, x: 10, y: 10)
                        .shadow(color: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), radius: 3, x: -5, y: -5)
                }
                .frame(width: 76, height: 50)
                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .cornerRadius(18)
                .padding(.horizontal, 4)
                .padding(.top, 10)
                
                Spacer()
                
                Text("On")
                    .font(.system(size: 17, weight: .medium, design: .default))
                    .foregroundColor(Color(#colorLiteral(red: 0.7857988944, green: 0.8164139397, blue: 0.9598672945, alpha: 1)))
                    .padding(.bottom, 20)
            }
            .frame(height: 120)
            .background(Color(#colorLiteral(red: 0.1756659481, green: 0.2916717629, blue: 0.8352418664, alpha: 1)))
            .cornerRadius(20)
            .padding(.trailing, 10)
        }
        .frame(width: 230, height: 135)
        .background(Color(#colorLiteral(red: 0.3163430578, green: 0.4367289846, blue: 1, alpha: 1)))
        .cornerRadius(30)
    }
}

//MARK: PlusButton
struct PlusButton: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .strokeBorder(style: StrokeStyle(lineWidth: 2, dash: [8]
                    )
                )
                .frame(width: 135, height: 135)
                .foregroundColor(Color(#colorLiteral(red: 0.8679608185, green: 0.8679608185, blue: 0.8679608185, alpha: 1)))
            
            Image(systemName: "plus")
                .font(.system(size: 30))
                .foregroundColor(Color(#colorLiteral(red: 0.8321105647, green: 0.8321105647, blue: 0.8321105647, alpha: 1)))
        }
    }
}
