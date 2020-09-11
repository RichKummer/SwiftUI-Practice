//
//  ContentView.swift
//  Smart-Thermostat
//
//  Created by RichK on 9/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Header()
            LivingRoom()
            LivingRoomCard()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
