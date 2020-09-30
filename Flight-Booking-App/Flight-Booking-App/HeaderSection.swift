//
//  HeaderSection.swift
//  Flight-Booking-App
//
//  Created by RichK on 9/29/20.
//

import SwiftUI

struct HeaderSection: View {
    var body: some View {
        HStack {
            ShippingLine()
            VStack {
                VStack (alignment: .leading) {
                    Text("Moscow VKO")
                        .bold()
                        .offset(y: -11)
                    Text("May 11 - May 20th")
                        .foregroundColor(Color(#colorLiteral(red: 0.8195181489, green: 0.8196596503, blue: 0.8195091486, alpha: 1)))
                        .offset(y: 10)
                    Text("Details")
                        .foregroundColor(Color(#colorLiteral(red: 0.9603847861, green: 0.5748082399, blue: 0.5408721566, alpha: 1)))
                        .bold()
                        .underline()
                        .offset(y: 30)
                }
                VStack (alignment: .leading) {
                    Text("Moscow VKO")
                        .bold()
                        .offset(y: 94)
                    Text("May 11 - May 20th")
                        .foregroundColor(Color(#colorLiteral(red: 0.8195181489, green: 0.8196596503, blue: 0.8195091486, alpha: 1)))
                        .offset(y: 98)
                  
                }
            }
            Spacer()
            .padding(.leading, 5)
        }
        .padding(.horizontal, 30)
    }
}

struct HeaderSection_Previews: PreviewProvider {
    static var previews: some View {
        HeaderSection()
    }
}

struct ShippingLine: View {
    var body: some View {
        VStack {
            Circle()
                .frame(width: 8, height: 8)
                .foregroundColor(Color(#colorLiteral(red: 0.8195181489, green: 0.8196596503, blue: 0.8195091486, alpha: 1)))
            Circle()
                .frame(width: 8, height: 8)
                .foregroundColor(Color(#colorLiteral(red: 0.8195181489, green: 0.8196596503, blue: 0.8195091486, alpha: 1)))
            Circle()
                .frame(width: 8, height: 8)
                .foregroundColor(Color(#colorLiteral(red: 0.8195181489, green: 0.8196596503, blue: 0.8195091486, alpha: 1)))
            Circle()
                .frame(width: 8, height: 8)
                .foregroundColor(Color(#colorLiteral(red: 0.8195181489, green: 0.8196596503, blue: 0.8195091486, alpha: 1)))
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color(#colorLiteral(red: 0.8195181489, green: 0.8196596503, blue: 0.8195091486, alpha: 1)))
                Circle()
                    .frame(width: 14, height: 14)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            }
            VStack {
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundColor(Color(#colorLiteral(red: 0.8195181489, green: 0.8196596503, blue: 0.8195091486, alpha: 1)))
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundColor(Color(#colorLiteral(red: 0.8195181489, green: 0.8196596503, blue: 0.8195091486, alpha: 1)))
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundColor(Color(#colorLiteral(red: 0.8195181489, green: 0.8196596503, blue: 0.8195091486, alpha: 1)))
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundColor(Color(#colorLiteral(red: 0.8195181489, green: 0.8196596503, blue: 0.8195091486, alpha: 1)))
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundColor(Color(#colorLiteral(red: 0.8195181489, green: 0.8196596503, blue: 0.8195091486, alpha: 1)))
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundColor(Color(#colorLiteral(red: 0.8195181489, green: 0.8196596503, blue: 0.8195091486, alpha: 1)))
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundColor(Color(#colorLiteral(red: 0.8195181489, green: 0.8196596503, blue: 0.8195091486, alpha: 1)))
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundColor(Color(#colorLiteral(red: 0.8195181489, green: 0.8196596503, blue: 0.8195091486, alpha: 1)))
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(#colorLiteral(red: 0.6265788674, green: 0.6226415634, blue: 0.8463951349, alpha: 1)))
                    Image(systemName: "flag.fill")
                        .font(.system(size: 12, weight: .regular, design: .default))
                        .frame(width: 14, height: 14)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                }
            }
        }
    }
}

