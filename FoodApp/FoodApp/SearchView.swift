//
//  SearchView.swift
//  FoodApp
//
//  Created by RichK on 9/1/20.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color(#colorLiteral(red: 0.819493711, green: 0.8195128441, blue: 0.8276723027, alpha: 1)), lineWidth: 1)
                .frame(width: 325, height: 54)
            HStack {
                Image(systemName: "magnifyingglass")
                Text("Search")
                Spacer()
            }
            .padding(.leading, 20)
        }
        .frame(width: 325, height: 54)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
