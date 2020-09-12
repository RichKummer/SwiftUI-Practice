//
//  LivingRoom.swift
//  Smart-Thermostat
//
//  Created by RichK on 9/11/20.
//

import SwiftUI



struct LivingRoom: View {
    var body: some View {
        HStack {
            VStack (spacing: 30) {
                Image(systemName: "gear")
                    .frame(width: 40, height: 40)
                    .background(Color.black)
                    .cornerRadius(25)
                    .foregroundColor(.white)
                Image(systemName: "power")
                    .frame(width: 50, height: 50)
                    .background(Color(#colorLiteral(red: 0.3868247867, green: 0.7551535964, blue: 0.3132826686, alpha: 1)))
                    .cornerRadius(25)
                    .foregroundColor(.white)
                    .shadow(color: Color(#colorLiteral(red: 0.3868247867, green: 0.7551535964, blue: 0.3132826686, alpha: 1)).opacity(0.8), radius: 20, x: 0, y: 5)
                Image(systemName: "clock")
                    .frame(width: 40, height: 40)
                    .background(Color.black)
                    .cornerRadius(25)
                    .foregroundColor(.white)
            }
            .padding(.trailing, 20)
            ZStack {
                Image("living-room")
                    .resizable()
                    .frame(width: 375, height: 325)
                    .cornerRadius(60)
                Image(systemName: "video")
                    .foregroundColor(.white)
                    .frame(width: 50, height: 50)
                    .background(Color(#colorLiteral(red: 0.6195626855, green: 0.6197923422, blue: 0.6113638282, alpha: 1)))
                    .cornerRadius(10)
                    .offset(x: 70, y: -120)
                    
            }
            
        }
        .offset(x: 40)
    }

}

struct LivingRoom_Previews: PreviewProvider {
    static var previews: some View {
        LivingRoom()
    }
}
