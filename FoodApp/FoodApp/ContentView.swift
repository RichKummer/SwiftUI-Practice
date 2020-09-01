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
            OptionsView()
            SearchView()
            FilterView()
            Tabbar()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
