//
//  FilterView.swift
//  FoodApp
//
//  Created by RichK on 9/1/20.
//

import SwiftUI

struct FilterView: View {
    var body: some View {
        HStack {
            HStack {
                Image("chicken")
                Text("All")
                    .bold()
            }
            .frame(width: 100, height: 54)
            .background(Color(#colorLiteral(red: 1, green: 0.7736342549, blue: 0, alpha: 1)))
            .cornerRadius(20)
            
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(#colorLiteral(red: 0.8117311597, green: 0.8075829148, blue: 0.8240227103, alpha: 1)), lineWidth: 1)
                    .frame(width: 120, height: 54)
                
                HStack {
                    Image("bread")
                    Text("Fast food")
                        .foregroundColor(Color(#colorLiteral(red: 0.8117311597, green: 0.8075829148, blue: 0.8240227103, alpha: 1)))
                }
            }

            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(#colorLiteral(red: 0.8117311597, green: 0.8075829148, blue: 0.8240227103, alpha: 1)), lineWidth: 1)
                    .frame(width: 120, height: 54)
                
                HStack {
                    Image("coffee")
                    Text("Drink")
                        .foregroundColor(Color(#colorLiteral(red: 0.8117311597, green: 0.8075829148, blue: 0.8240227103, alpha: 1)))
                }
            }
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
