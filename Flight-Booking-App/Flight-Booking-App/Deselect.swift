//
//  Deselect.swift
//  Flight-Booking-App
//
//  Created by RichK on 9/29/20.
//

import SwiftUI

struct Deselect: View {
    var body: some View {
        HStack {
            Text("Deselect All")
                .foregroundColor(Color(#colorLiteral(red: 0.7182245117, green: 0.7183486729, blue: 0.7182166446, alpha: 1)))
                .bold()
            Spacer()
            Image(systemName: "chevron.right")
                .font(.system(size: 15, weight: .regular, design: .default))
                .frame(width: 30, height: 30)
                .background(Color(#colorLiteral(red: 0.8190573454, green: 0.8351883292, blue: 0.8476160169, alpha: 1)))
                .cornerRadius(15)
                .foregroundColor(.white)
        }
        .padding(.horizontal, 30)
    }
}

struct Deselect_Previews: PreviewProvider {
    static var previews: some View {
        Deselect()
    }
}
