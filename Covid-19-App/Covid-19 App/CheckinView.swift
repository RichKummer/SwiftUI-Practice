//
//  CheckinView.swift
//  Covid-19 App
//
//  Created by RichK on 7/11/20.
//  Copyright © 2020 Rich Kummer. All rights reserved.
//

import SwiftUI

struct CheckinView: View {
    var body: some View {
        ZStack {
            
            Color(#colorLiteral(red: 0.2296863198, green: 0.2407513857, blue: 0.6022840142, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    VStack (alignment: .leading) {
                        Text("1st check-in reported!")
                            .fontWeight(.bold)
                            .font(.system(size: 40, weight: .bold, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    }
                    .padding(.leading, 40)
                    
                    Spacer()
                }
                .offset(y: -50)
                
                HStack {
                    Text("Share the app so that more people can help researchers track COVID-19.")
                        .foregroundColor(Color(#colorLiteral(red: 0.7433308815, green: 0.7468704831, blue: 0.9636936865, alpha: 1)))
                        .lineSpacing(5)
                        .font(.system(size: 16, weight: .medium, design: .rounded))
                        .padding(.leading, 40)
                        .padding(.top, 30)
                    Spacer()
                }
                .offset(y: -50)
                
                Image("Success")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 300)
                    .offset(y: -50)
                
                Button(action: {}) {
                    HStack {
                        Text("Continue")
                            .foregroundColor(Color(#colorLiteral(red: 0.07237468274, green: 0.07237468274, blue: 0.07237468274, alpha: 1)))
                            .font(.system(size: 19, weight: .semibold, design: .rounded))
                            .padding(.leading, 30)
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color(#colorLiteral(red: 0.6843646765, green: 0.526917994, blue: 0.1830447316, alpha: 1)))
                            .font(.system(size: 15, weight: .bold))
                      
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color(#colorLiteral(red: 0.08749019355, green: 0.08218964189, blue: 0.07680594176, alpha: 1)))
                            .font(.system(size: 15, weight: .bold))
                            .padding(.leading, -7)
                            .padding(.trailing, 30)
                    }
                }
                .frame(width: 180, height: 60)
                .background(Color(#colorLiteral(red: 0.9898048043, green: 0.8352805972, blue: 0.3801714182, alpha: 1)))
                .cornerRadius(16)
                .offset(x: 50, y: 50)
            }
            
        }
    }
}

struct CheckinView_Previews: PreviewProvider {
    static var previews: some View {
        CheckinView()
    }
}
