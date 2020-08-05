//
//  AirConditioningButton.swift
//  Neumorph-Practice
//
//  Created by RichK on 8/5/20.
//

import SwiftUI

struct AirConditioningButton: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Air Condition")
                    .font(.system(size: 22, weight: .medium, design: .default))
                    .foregroundColor(.black)
                Text("Connected")
                    .font(.system(size: 15, weight: .medium, design: .default))
                    .foregroundColor(Color(#colorLiteral(red: 0.7908973806, green: 0.7888263049, blue: 0.8147604695, alpha: 1)))
                    .padding(.top, 5)
            }
            .padding(.leading, 20)
            Spacer()
            
            ZStack {
                
                Circle()
                    .frame(width: 90, height: 90)
                    .foregroundColor(Color(#colorLiteral(red: 0.9376388008, green: 0.9376388008, blue: 0.9376388008, alpha: 1)))
                
                Circle()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color(#colorLiteral(red: 0.9878846764, green: 0.9878846764, blue: 0.9878846764, alpha: 1)))
                    .shadow(color: Color(#colorLiteral(red: 0.8928458122, green: 0.8928458122, blue: 0.8928458122, alpha: 1)), radius: 10, x: 15, y: 15).shadow(color: Color(#colorLiteral(red: 0.9183642328, green: 0.9283284173, blue: 0.9582209708, alpha: 1)), radius: 5, x: 15, y: 15)
                    .shadow(color: Color(#colorLiteral(red: 0.9707526967, green: 0.9707526967, blue: 0.9707526967, alpha: 1)), radius: 8, x: -5, y: -5)
                
                Circle()
                    .strokeBorder(
                        style: StrokeStyle(lineWidth: 2,
                                           dash: [5]
                        )
                    )
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color(#colorLiteral(red: 0.8346486358, green: 0.8346486358, blue: 0.8346486358, alpha: 1)))
            }
            .frame(width: 90, height: 90)
            .padding(.trailing, 20)
        }
        .frame(width: 300, height: 120)
        .background(Color(#colorLiteral(red: 0.9627617386, green: 0.9627617386, blue: 0.9627617386, alpha: 1)))
        .cornerRadius(20)
    }
}

struct AirConditioningButton_Previews: PreviewProvider {
    static var previews: some View {
        AirConditioningButton()
    }
}
