//
//  ContentView.swift
//  Smart-Thermostat
//
//  Created by RichK on 9/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                Header()
                    
                LivingRoom()
                    .offset(y: 15)
                LivingRoomCard()
                    .offset(y: 35)
            }
        }
        .background(Color(#colorLiteral(red: 0.9998916984, green: 1, blue: 0.9998809695, alpha: 1)))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
