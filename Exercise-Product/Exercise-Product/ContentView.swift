//
//  ContentView.swift
//  Exercise-Product
//
//  Created by RichK on 8/1/20.
//  Copyright © 2020 Rich Kummer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                    VStack (alignment: .trailing){
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 35, height: 8)
                        RoundedRectangle(cornerRadius: 20)
                        .frame(width: 25, height: 7)
                    }
                }
                .padding(.trailing, 30)
                Text("Workouts")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(.gray)
                    .padding(.leading, 30)
            }
            .frame(width: 400)
            
            ZStack {
                VStack {
                    Text("")
                    
                }
                .frame(width: 360, height: 250)
                .background(Color(#colorLiteral(red: 1, green: 0.9939519151, blue: 0.9891758829, alpha: 1)))
                .cornerRadius(40)
                .offset(x: 10, y: 20)
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Athena")
                                .font(.system(size: 40, weight: .bold, design: .rounded))
                            Text("Core, Lower")
                                .font(.system(size: 22, weight: .bold, design: .rounded))
                                .foregroundColor(.gray)
                        }
                        .padding(.leading, 30)
                        .offset(y: -20)
                        Spacer()
                    }
                    
                    HStack {
                        Text("Duration")
                            .font(.system(size: 16, weight: .bold, design: .rounded))
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 50, height: 25)
                                .foregroundColor(.white)
                            HStack {
                                Circle()
                                    .frame(width: 6, height: 6)
                                Circle()
                                    .frame(width: 6, height: 6)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(width: 6, height: 6)
                                    .foregroundColor(.gray)
                            }
                            
                        }
                        HStack {
                            Text("Difficulty")
                                .font(.system(size: 16, weight: .bold, design: .rounded))
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 50, height: 25)
                                    .foregroundColor(.white)
                                HStack {
                                    Circle()
                                        .frame(width: 6, height: 6)
                                    Circle()
                                        .frame(width: 6, height: 6)
                                    Circle()
                                        .frame(width: 6, height: 6)
                                        .foregroundColor(.gray)
                                }
                                
                            }
                        }
                            .padding(.leading, 20)
                        
                    }
                    .offset(y: 20)
                }
                .frame(width: 360, height: 250)
                .background(Color(#colorLiteral(red: 0.9918318482, green: 0.8216120922, blue: 1, alpha: 1)))
                .cornerRadius(40)
            }
            .padding(.vertical, 20)
            
            //MARK: Small cards
            VStack (alignment: .leading) {
                Text("Categories")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(.gray)
                    .padding(.leading, 95)
                HStack {
                    ForEach(cardsData) { item in
                        cardBody(Card: item)
                    }
                }
            }
            padding(.vertical, 20)
            
            HStack (spacing: 75) {
                Image(systemName: "house")
                    .font(.system(size: 28))
                Image(systemName: "arrow.right")
                    .font(.system(size: 28))
                Image(systemName: "person.2")
                    .font(.system(size: 28))
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 28))
            }
            .padding(.top, 20)
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var background: Color
    var text: Color
}

let cardsData = [
    Card(title: "Cardio", image: "yoga-2", background: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), text: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))),
    Card(title: "Full Body", image: "yoga-1", background: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), text: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))),
    Card(title: "Yoga", image: "yoga-3", background: Color(#colorLiteral(red: 0.9966291244, green: 0.7728991759, blue: 0.9342010672, alpha: 1)), text: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
]


struct cardBody: View {
    
    var Card: Card
    
    var body: some View {
        ZStack {
            Image(Card.image)
                .resizable()
                .frame(width: 100, height: 100)
                .offset(y: 20)
            Text(Card.title)
                .font(.system(size: 24, weight: .bold, design: .rounded))
                .foregroundColor(Card.text)
                .offset(x: -20, y: -70)
        }
        .frame(width: 175, height: 240)
        .background(Card.background)
        .cornerRadius(40)
    }
}
