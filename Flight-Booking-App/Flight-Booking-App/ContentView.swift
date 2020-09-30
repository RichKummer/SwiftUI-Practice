//
//  ContentView.swift
//  Flight-Booking-App
//
//  Created by RichK on 9/27/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderSection()
                .offset(y: -38)
            HeaderText().padding(.vertical, 10)
                .offset(y: -15)
            LuggageSlider()
                .padding(.top, 10)
            Deselect()
                .padding(.top, 10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderText: View {
    var body: some View {
        HStack {
            Text("Luggage Information")
                .font(.system(size: 19, weight: .bold, design: .default))
            Spacer()
        }.padding(.horizontal, 30)
    }
}
