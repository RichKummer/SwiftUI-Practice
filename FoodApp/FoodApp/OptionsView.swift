//
//  OptionsView.swift
//  FoodApp
//
//  Created by RichK on 9/1/20.
//

import SwiftUI

struct OptionsView: View {
    var body: some View {
        HStack {
            VStack {
                Text("Food")
                    .font(.system(size: 44, weight: .medium, design: .rounded))
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 90, height: 8)
                    .foregroundColor(Color(#colorLiteral(red: 0.5831561089, green: 0.5637996197, blue: 0.9161736369, alpha: 1)))
                    .offset(x: 5, y: -10)
            }
            Spacer().frame(width: 50)
            VStack {
                Text("Offers")
                    .font(.system(size: 44, weight: .medium, design: .rounded))
                    .foregroundColor(Color(#colorLiteral(red: 0.7175186276, green: 0.717396915, blue: 0.7338809967, alpha: 1)))
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 90, height: 8)
                    .offset(x: 5, y: -10)
                    .opacity(0)
            }
            Spacer()
        }
        .padding(.leading, 30)
    }
}

struct OptionsView_Previews: PreviewProvider {
    static var previews: some View {
        OptionsView()
    }
}
