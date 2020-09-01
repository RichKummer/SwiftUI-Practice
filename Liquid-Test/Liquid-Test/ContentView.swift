//
//  ContentView.swift
//  Liquid-Test
//
//  Created by RichK on 8/23/20.
//

import SwiftUI
import Liquid

struct ContentView: View {
    var body: some View {
        ZStack {
            Liquid()
                .frame(width: 240, height: 240)
                .foregroundColor(.blue)
                .opacity(0.3)


            Liquid()
                .frame(width: 220, height: 220)
                .foregroundColor(.blue)
                .opacity(0.6)

            Liquid(samples: 5)
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            
            Text("Liquid").font(.largeTitle).foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
