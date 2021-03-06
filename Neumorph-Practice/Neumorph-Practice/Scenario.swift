//
//  Scenario.swift
//  Neumorph-Practice
//
//  Created by RichK on 8/5/20.
//

import SwiftUI

struct Scenario: View {
    var body: some View {
        HStack {
            Text("Turn on the scenario of presence")
                .font(.system(size: 19, weight: .bold, design: .default))
                .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                .padding(.leading, 20)
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 100, height: 90)
                    .foregroundColor(Color(#colorLiteral(red: 0.8771136558, green: 0.3522240053, blue: 0.1035811499, alpha: 1)))
                    .shadow(color: Color(#colorLiteral(red: 0.8793988824, green: 0.3512657881, blue: 0.1028728113, alpha: 1)).opacity(0.25), radius: 10, x: 0, y:10)
                Image(systemName: "arrow.right")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
            }
            .padding(.trailing, 20)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 120)
        .background(Color(#colorLiteral(red: 0.9627617386, green: 0.9627617386, blue: 0.9627617386, alpha: 1)))
        .cornerRadius(30)
        .padding(.horizontal, 20)
        
    }
}

struct Scenario_Previews: PreviewProvider {
    static var previews: some View {
        Scenario()
    }
}
