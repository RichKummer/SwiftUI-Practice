//
//  BottomCard.swift
//  CardAnimation
//
//  Created by RichK on 7/23/20.
//  Copyright © 2020 Rich Kummer. All rights reserved.
//

import SwiftUI

struct BottomCard: View {
    
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 30)
            
            ForEach(CardInfoData) { item in
                CardContent(cardInfo: item)
            }
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 500)
        .background(Color(#colorLiteral(red: 0.1580671966, green: 0.1580849886, blue: 0.164838399, alpha: 1)))
        .cornerRadius(30  )
    }
}

struct BottomCard_Previews: PreviewProvider {
    static var previews: some View {
        BottomCard()
    }
}

struct CardInfo: Identifiable {
    var id = UUID()
    var icon: String
    var name: String
    var time: String
    var charge: String
}

let CardInfoData = [
    CardInfo(icon: "star", name: "HBO", time: "Today", charge: "-$6.27"),
    CardInfo(icon: "arrow.clockwise", name: "Starz", time: "Yesterday", charge: "-$20.13"),
    CardInfo(icon: "bag", name: "LGBTQ", time: "04/26/20", charge: "-$40.12"),
    CardInfo(icon: "suit.heart", name: "Dota Plus", time: "03/01/20", charge: "-$3.99"),
    CardInfo(icon: "arrow.clockwise", name: "Hippsburg", time: "01/31/20", charge: "-$17.20")
]


struct CardContent: View {
    
    var cardInfo: CardInfo
    
    var body: some View {
        HStack {
            Image(systemName: cardInfo.icon)
                .foregroundColor(.white)
                .frame(width: 40, height: 40)
                .background(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                .cornerRadius(20)
                .padding(.leading, 30)
            
            VStack(alignment: .leading) {
                Text(cardInfo.name)
                    .font(.system(size: 17, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                Text(cardInfo.time)
                    .font(.system(size: 14, weight: .medium, design: .rounded))
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
            }
            Spacer()
            Text(cardInfo.charge)
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundColor(.white)
                .padding(.trailing, 30)
        }
        .padding(.vertical, 10)
    }
}
