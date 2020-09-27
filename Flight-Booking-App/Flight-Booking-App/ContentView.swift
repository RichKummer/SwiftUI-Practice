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
            HeaderText()
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
                .font(.system(size: 24, weight: .bold, design: .default))
            Spacer()
        }.padding(.horizontal, 30)
    }
}
