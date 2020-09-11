//
//  Header.swift
//  Smart-Thermostat
//
//  Created by RichK on 9/11/20.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 25, height: 3)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 18, height: 3)
                    
            }
            .padding(.trailing, 20)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack (spacing: 30) {
                    VStack (alignment: .leading) {
                        Text("Living Room")
                            .bold()
                            .foregroundColor(Color(#colorLiteral(red: 0.4328250885, green: 0.3964808881, blue: 0.959109962, alpha: 1)))
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 25, height: 5)
                            .offset(y: -5)
                            .foregroundColor(Color(#colorLiteral(red: 0.4328250885, green: 0.3964808881, blue: 0.959109962, alpha: 1)))
                    }
                    VStack {
                        Text("Kitchen")
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 25, height: 5)
                            .opacity(0)
                    }
                    VStack {
                        Text("Bathroom")
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 25, height: 5)
                            .opacity(0)
                    }
                    VStack {
                        Text("Bedroom")
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 25, height: 5)
                            .opacity(0)
                    }
                }
            }
        }
        .padding(.leading, 20)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
