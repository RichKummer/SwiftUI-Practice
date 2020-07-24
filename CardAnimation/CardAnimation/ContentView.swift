//
//  ContentView.swift
//  CardAnimation
//
//  Created by RichK on 7/20/20.
//  Copyright © 2020 Rich Kummer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var CardMove = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.1285772622, green: 0.1285926104, blue: 0.1285644174, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Text("Breakdown")
                    .font(.system(size: 19, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .opacity(CardMove ? 1 : 0)
                Text("Current Balance")
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                    .font(.system(size: 19, weight: .medium, design: .rounded))
                    .opacity(CardMove ? 0 : 1)
                Text("$11,000")
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.system(size: 35, weight: .bold, design: .rounded))
                    .padding(.top, 4)
                    .opacity(CardMove ? 0 : 1)
            }
            .offset(y: CardMove ? -275 : -250)
            .animation(.spring())
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack (spacing: 20){
                    ForEach(cardData) { item in
                        GeometryReader { geometry in
                            Cards(CardMove: self.$CardMove, card: item)
                                .rotation3DEffect(Angle(degrees: Double(geometry.frame(in: .global).minX - 20) / 30), axis: (x: 10, y: -20, z: 0))
                        }
                        .frame(width: 375, height: 200)
                    }
                }
                .frame(height: 350)
                .padding(.leading, 25.0)
            }
            .padding(.top, CardMove ? -250 : 50)
            .animation(.spring())
            
            BottomCard()
                .offset(y: CardMove ? 250 : 1000)
                .animation(.spring())
            
        }
        .animation(.spring())
        
        .onTapGesture {
            self.CardMove = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Cards: View {
    
    @Binding var CardMove: Bool
    
    var card: Card
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [card.linearOne, card.linearTwo]), startPoint: .bottomLeading, endPoint: .topTrailing)
            VStack {
                
                HStack {
                    //First four circles
                    HStack (spacing: 5){
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                    }
                    .padding(.leading, 30)
                    HStack (spacing: 5){
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                    }
                    
                    HStack (spacing: 5){
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                    }
                    
                    Text(card.number)
                        .foregroundColor(.white).opacity(0.7)
                        .font(.system(size: 19, weight: .bold, design: .rounded))
                    Spacer()
                }
                .padding(.top, 25)
                
                Spacer()
                HStack {
                    Text(card.total)
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .padding(.leading, 30)
                    Spacer()
                    
                    ZStack {
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .padding(.trailing, 40)
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white).opacity(0.7)
                    }
                }
                .padding(.bottom, 25)
            }
        }
        .frame(width: 325, height: 200)
        .cornerRadius(25)
        .rotationEffect(.degrees(CardMove ? 0 : 90))
        .animation(.spring())
        
        .onTapGesture {
            self.CardMove = true
        }
    }
}


struct Card: Identifiable {
    var id = UUID()
    var number: String
    var total: String
    var linearOne: Color
    var linearTwo: Color
}

let cardData = [
    Card(number: "1234", total: "1,564", linearOne: Color(#colorLiteral(red: 0.4352941176, green: 0.1215686275, blue: 0.9725490196, alpha: 1)), linearTwo: Color(#colorLiteral(red: 0.6496010423, green: 0.4100577831, blue: 0.9978545308, alpha: 1))),
    Card(number: "5234", total: "8,451", linearOne: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), linearTwo: Color(#colorLiteral(red: 0.6496010423, green: 0.4100577831, blue: 0.9978545308, alpha: 1))),
    Card(number: "6241", total: "649", linearOne: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), linearTwo: Color(#colorLiteral(red: 0.6496010423, green: 0.4100577831, blue: 0.9978545308, alpha: 1))),
    Card(number: "5627", total: "4,623", linearOne: Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)), linearTwo: Color(#colorLiteral(red: 0.6496010423, green: 0.4100577831, blue: 0.9978545308, alpha: 1))),
    Card(number: "9182", total: "12,649", linearOne: Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)), linearTwo: Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)))
]
