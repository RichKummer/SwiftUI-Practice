//
//  ContentView.swift
//  FoodApp
//
//  Created by RichK on 9/1/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
                .padding(.top, 30)
            OptionsView()
                .padding(.top, 30)
            SearchView()
                .padding(.bottom, 20)
            FilterView()
                .padding(.bottom, 10)
                .padding(.top, 20)
            Cards()
                .padding(.vertical, 20)
            Tabbar()
                .padding(.top, 50)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
