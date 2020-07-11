//
//  ContentView.swift
//  Covid-19 App
//
//  Created by RichK on 7/11/20.
//  Copyright © 2020 Rich Kummer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var checkin = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.2656591833, green: 0.2760971785, blue: 0.6801500916, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            
            VStack {
                HStack {
                    VStack {
                        Text("May")
                            .fontWeight(.semibold)
                        Text("25th")
                            .fontWeight(.semibold)
                    }
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color(#colorLiteral(red: 0.5246489912, green: 0.5197211769, blue: 0.7096089784, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.9456338286, green: 0.9421530962, blue: 0.9795047641, alpha: 1)))
                    .cornerRadius(15)
                    .padding(.leading, 40)
                
                    Spacer()
                
                    Image(systemName: "circle.grid.2x2.fill")
                        .foregroundColor(.black)
                        .font(.system(size: 22))
                        .frame(width: 40, height: 40)
                        .padding(.trailing, 40)
                }
                .padding(.top, 80)
            
            Spacer()
            
            //Header Text
            VStack {
                HStack {
                    Text("How people feel in")
                        .font(.system(size: 19, weight: .semibold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.30787235, green: 0.2909336856, blue: 0.8380511558, alpha: 1)))
                        .padding(.leading, 40)
                    Spacer()
                }
                HStack {
                    Image("map-marker-alt")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 34, height: 34)
                        .padding(.leading, 35)
                    
                    Text("Los Angeles")
                        .fontWeight(.bold)
                        .font(.system(size: 40, weight: .bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.2151835561, green: 0.2002438307, blue: 0.4034233391, alpha: 1)))
                    Spacer()
                }
                .padding(.top, -10)
            }
            .offset(y: -50)
            
            Spacer()
            
            //Cards
            HStack {
                VStack {
                    Image("smile")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                    
                    Text("458")
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.1072809175, green: 0.5594719648, blue: 0.4577612877, alpha: 1)))
                        
                    Text("Feeling well")
                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.2837921977, green: 0.6179440022, blue: 0.5367333889, alpha: 1)))
                        .padding(.top, 4)
                }
                .frame(width: 140, height: 200)
                .background(Color(#colorLiteral(red: 0.8999348283, green: 0.9731683135, blue: 0.9569051862, alpha: 1)))
                .cornerRadius(20)
                .padding(.leading, 40)
                
                Spacer()
                VStack {
                    Image("frown")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("14")
                            .font(.system(size: 24, weight: .bold, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.5133218169, green: 0.3403077722, blue: 0.3385082781, alpha: 1)))
                            
                        Text("Not well")
                            .font(.system(size: 14, weight: .semibold, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.5434539318, green: 0.4429319203, blue: 0.4294563532, alpha: 1)))
                            .padding(.top, 4)
                    }
                    .frame(width: 140, height: 200)
                    .background(Color(#colorLiteral(red: 0.9815098643, green: 0.9332689047, blue: 0.9285618663, alpha: 1)))
                    .cornerRadius(20)
                    .padding(.trailing, 40)
            }
            .offset(y: -130)
        }
            .frame(maxWidth: .infinity)
            .frame(height: 650)
            .background(Color(.white))
            .cornerRadius(40)
            .offset(y: -90)
            
            
            VStack {
                Text("9,877 people have checked in today")
                    .foregroundColor(Color(#colorLiteral(red: 0.7569118738, green: 0.7529122233, blue: 0.876386106, alpha: 1)))
                    .fontWeight(.semibold)
                    .font(.system(size: 14))
                    .padding(.top, 30)
                
                Button(action: {self.checkin.toggle()}) {
                    Text("Check in again later")
                        .foregroundColor(Color(#colorLiteral(red: 0.07237468274, green: 0.07237468274, blue: 0.07237468274, alpha: 1)))
                        .font(.system(size: 19, weight: .semibold, design: .rounded))
                }
                .frame(width: 280, height: 60)
                .background(Color(#colorLiteral(red: 0.9898048043, green: 0.8352805972, blue: 0.3801714182, alpha: 1)))
                .cornerRadius(16)
                .padding(.top, 10)
                .sheet(isPresented: $checkin) {
                    CheckinView()
                }
            }
            .offset(y: 300)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

