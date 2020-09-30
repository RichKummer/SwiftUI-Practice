//
//  LuggageSlider.swift
//  Flight-Booking-App
//
//  Created by RichK on 9/27/20.
//

import SwiftUI

struct LuggageSlider: View {
    var body: some View {
        VStack {
            //MARK: First row
            HStack {
                OutboundBtn()
                    .padding(.leading, 30)
                Spacer()
            }
            .padding(.bottom, 20)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    VStack (alignment: .leading){
                        Image(systemName: "bag")
                            .padding(.bottom, 8)
                        Text("No Bags Added")
                        Text("$0")
                            .font(.system(size: 19, weight: .bold, design: .default))
                            .padding(.top, 1)
                    }
                    .frame(width: 150, height: 150)
                    .background(Color(#colorLiteral(red: 0.6265788674, green: 0.6226415634, blue: 0.8463951349, alpha: 1)))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    VStack (alignment: .leading){
                        Image(systemName: "bag")
                            .padding(.bottom, 8)
                        Text("1 x 23kg bag")
                        Text("$49")
                            .font(.system(size: 19, weight: .bold, design: .default))
                            .padding(.top, 1)
                    }
                    .frame(width: 150, height: 150)
                    .background(Color(#colorLiteral(red: 0.2933255434, green: 0.2660892904, blue: 0.55271101, alpha: 1)))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    VStack (alignment: .leading){
                        Image(systemName: "bag")
                            .padding(.bottom, 8)
                        Text("No Bags Added")
                        Text("$0")
                            .font(.system(size: 19, weight: .bold, design: .default))
                            .padding(.top, 1)
                    }
                    .frame(width: 150, height: 150)
                    .background(Color(#colorLiteral(red: 0.6265788674, green: 0.6226415634, blue: 0.8463951349, alpha: 1)))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    VStack (alignment: .leading){
                        Image(systemName: "bag")
                            .padding(.bottom, 8)
                        Text("No Bags Added")
                        Text("$0")
                            .font(.system(size: 19, weight: .bold, design: .default))
                            .padding(.top, 1)
                    }
                    .frame(width: 150, height: 150)
                    .background(Color(#colorLiteral(red: 0.6265788674, green: 0.6226415634, blue: 0.8463951349, alpha: 1)))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                }
                .padding(.leading, 30)
            }
            //MARK: Second row
            HStack {
                ReturnBtn()
                    .padding(.leading, 30)
                Spacer()
            }
            .padding(.vertical, 20)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    VStack (alignment: .leading){
                        Image(systemName: "bag")
                            .padding(.bottom, 8)
                        Text("No Bags Added")
                        Text("$0")
                            .font(.system(size: 19, weight: .bold, design: .default))
                            .padding(.top, 1)
                    }
                    .frame(width: 150, height: 130)
                    .background(Color(#colorLiteral(red: 0.2933255434, green: 0.2660892904, blue: 0.55271101, alpha: 1)))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    VStack (alignment: .leading){
                        Image(systemName: "bag")
                            .padding(.bottom, 8)
                        Text("1 x 23kg bag")
                        Text("$53")
                            .font(.system(size: 19, weight: .bold, design: .default))
                            .padding(.top, 1)
                    }
                    .frame(width: 150, height: 130)
                    .background(Color(#colorLiteral(red: 0.6265788674, green: 0.6226415634, blue: 0.8463951349, alpha: 1)))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    VStack (alignment: .leading){
                        Image(systemName: "bag")
                            .padding(.bottom, 8)
                        Text("No Bags Added")
                        Text("$0")
                            .font(.system(size: 19, weight: .bold, design: .default))
                            .padding(.top, 1)
                    }
                    .frame(width: 150, height: 130)
                    .background(Color(#colorLiteral(red: 0.6265788674, green: 0.6226415634, blue: 0.8463951349, alpha: 1)))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    VStack (alignment: .leading){
                        Image(systemName: "bag")
                            .padding(.bottom, 8)
                        Text("No Bags Added")
                        Text("$0")
                            .font(.system(size: 19, weight: .bold, design: .default))
                            .padding(.top, 1)
                    }
                    .frame(width: 150, height: 130)
                    .background(Color(#colorLiteral(red: 0.6265788674, green: 0.6226415634, blue: 0.8463951349, alpha: 1)))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                }
                .padding(.leading, 30)
            }
        }
    }
}

struct LuggageSlider_Previews: PreviewProvider {
    static var previews: some View {
        LuggageSlider()
    }
}

struct OutboundBtn: View {
    var body: some View {
        HStack {
            Image(systemName:"arrowshape.turn.up.left")
                .rotationEffect(Angle(degrees: 180))
                .frame(width: 22, height: 22)
                .font(.system(size: 12))
                .foregroundColor(.white)
                .background(Color(#colorLiteral(red: 0.9957155585, green: 0.6188396215, blue: 0.5343499184, alpha: 1)))
                .cornerRadius(15)
                .padding(.leading, 20)
            
            Text("Outbound")
                .bold()
                .foregroundColor(Color(#colorLiteral(red: 0.9641465545, green: 0.5905337334, blue: 0.5610619783, alpha: 1)))
                .padding(.trailing, 10)
            Spacer()
        }
        .frame(width: 180, height: 44)
        .background(Color(#colorLiteral(red: 0.9898449779, green: 0.9214903116, blue: 0.9124574661, alpha: 1)))
        .cornerRadius(20)
    }
}

struct ReturnBtn: View {
    var body: some View {
        HStack {
            Image(systemName:"arrowshape.turn.up.right")
                .rotationEffect(Angle(degrees: 180))
                .frame(width: 22, height: 22)
                .font(.system(size: 12))
                .foregroundColor(.white)
                .background(Color(#colorLiteral(red: 0.9957155585, green: 0.6188396215, blue: 0.5343499184, alpha: 1)))
                .cornerRadius(15)
                .padding(.leading, 20)
            Text("Return")
                .bold()
                .foregroundColor(Color(#colorLiteral(red: 0.9641465545, green: 0.5905337334, blue: 0.5610619783, alpha: 1)))
                .padding(.trailing, 30)
            Spacer()
        }
        .frame(width: 180, height: 44)
        .background(Color(#colorLiteral(red: 0.9898449779, green: 0.9214903116, blue: 0.9124574661, alpha: 1)))
        .cornerRadius(20)
    }
}
