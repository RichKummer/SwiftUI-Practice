//
//  AddMore.swift
//  Neumorph-Practice
//
//  Created by RichK on 8/5/20.
//

import SwiftUI

struct AddMore: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color(#colorLiteral(red: 0.855904981, green: 0.855904981, blue: 0.855904981, alpha: 1)), lineWidth: 1)
                .frame(width: 325, height: 110)
            VStack  (alignment: .leading) {
                Text("Add more devices to enhance your experience")
                    .font(.system(size: 19, weight: .medium, design: .default))
            }
            .frame(width: 260)
            .padding(.trailing, 50)
        }
    }
}

struct AddMore_Previews: PreviewProvider {
    static var previews: some View {
        AddMore()
    }
}
