//
//  LivingRoom-Card.swift
//  Smart-Thermostat
//
//  Created by RichK on 9/11/20.
//

import SwiftUI

struct LivingRoomCard: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    //MARK: Title
                    HStack {
                        Text("Living Room")
                            .font(.system(size: 22, weight: .bold, design: .rounded))
                    }
                    .padding(.leading, 20)
                    Spacer()
                    VStack {
                        Circle()
                            .frame(width: 8, height: 8)
                        Circle()
                            .frame(width: 8, height: 8)
                    }
                    .padding(.trailing, 20)
                }
                .padding(.horizontal, 28)
                .padding(.bottom, 20)
                VStack (spacing: 20) {
                    HStack (spacing: 20){
                        //MARK: First row
                        ZStack {
                            HStack (spacing: 16){
                                Image(systemName: "sun.min.fill")
                                    .font(.system(size: 40))

                                VStack (alignment: .leading){
                                    Text("37%")
                                        .font(.system(size: 24))
                                        .bold()
                                       
                                    Text("Light")
                                        .opacity(0.7)
                                        .offset(y: 8)
                                }
                            }
                        }
                        .frame(width: 214, height: 130)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4287705719, green: 0.3964984417, blue: 0.9591266513, alpha: 1)), Color(#colorLiteral(red: 0.5305125713, green: 0.5448141098, blue: 0.9930323958, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                        .foregroundColor(.white)
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.5305125713, green: 0.5448141098, blue: 0.9930323958, alpha: 1)).opacity(0.5), radius: 20, x: 0, y: 10)
                        
                        ZStack {
                            VStack {
                                Image(systemName: "thermometer")
                                    .font(.system(size: 30))
                                    .foregroundColor(Color(#colorLiteral(red: 0.4921187162, green: 0.4633818865, blue: 0.9621564746, alpha: 1)))
                                Text("Temp.")
                                    .offset(y:20)
                                    .foregroundColor(Color(#colorLiteral(red: 0.1919391633, green: 0.1919759413, blue: 0.1919368599, alpha: 1)))
                            }
                        }
                        .frame(width: 100, height: 130)
                        .background(Color.white)
                        .cornerRadius(25)
                        .shadow(color: Color.black.opacity(0.15), radius: 20, x: 0, y: 10)
                    }
                    HStack (spacing: 20){
                        //MARK: Second row
                        ZStack {
                            VStack {
                                Image(systemName: "wifi")
                                    .font(.system(size: 30))
                                    .foregroundColor(Color(#colorLiteral(red: 0.4921187162, green: 0.4633818865, blue: 0.9621564746, alpha: 1)))
                                Text("Wifi")
                                    .offset(y:20)
                                    .foregroundColor(Color(#colorLiteral(red: 0.1919391633, green: 0.1919759413, blue: 0.1919368599, alpha: 1)))
                            }
                        }
                        .frame(width: 100, height: 130)
                        .background(Color.white)
                        .cornerRadius(25)
                        .shadow(color: Color.black.opacity(0.15), radius: 20, x: 0, y: 10)
                        
                        ZStack {
                            VStack {
                                Image(systemName: "wind")
                                    .font(.system(size: 30))
                                    .foregroundColor(Color(#colorLiteral(red: 0.4921187162, green: 0.4633818865, blue: 0.9621564746, alpha: 1)))
                                Text("Air-con.")
                                    .offset(y:20)
                                    .foregroundColor(Color(#colorLiteral(red: 0.1919391633, green: 0.1919759413, blue: 0.1919368599, alpha: 1)))
                            }
                        }
                        .frame(width: 100, height: 130)
                        .background(Color.white)
                        .cornerRadius(25)
                        .shadow(color: Color.black.opacity(0.15), radius: 20, x: 0, y: 10)
                        
                        ZStack {
                            VStack {
                                Image(systemName: "drop")
                                    .font(.system(size: 30))
                                    .foregroundColor(Color(#colorLiteral(red: 0.4921187162, green: 0.4633818865, blue: 0.9621564746, alpha: 1)))
                                Text("Humid.")
                                    .offset(y:20)
                                    .foregroundColor(Color(#colorLiteral(red: 0.1919391633, green: 0.1919759413, blue: 0.1919368599, alpha: 1)))
                            }
                        }
                        .frame(width: 100, height: 130)
                        .background(Color.white)
                        .cornerRadius(25)
                        .shadow(color: Color.black.opacity(0.15), radius: 20, x: 0, y: 10)
                    }
                }
            }
        }
        .frame(height: 410)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(color: Color.black.opacity(0.15), radius: 20, x: 0, y: 10)
        .padding(.horizontal, 20)

    }
}

struct LivingRoomCard_Previews: PreviewProvider {
    static var previews: some View {
        LivingRoomCard()
    }
}
