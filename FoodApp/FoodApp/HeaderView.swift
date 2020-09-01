//
//  HeaderView.swift
//  FoodApp
//
//  Created by RichK on 9/1/20.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "gear")
            Spacer()
            HStack {
                Text("Breakfast")
                    .bold()
                Image(systemName: "chevron.down")
            }
            Spacer()
            Image("avataaar")
                .resizable()
                .frame(width: 40, height: 40)
        }
        .padding(.horizontal, 20)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
