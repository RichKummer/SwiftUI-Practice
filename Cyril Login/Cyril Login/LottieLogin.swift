//
//  LottieLogin.swift
//  Cyril Login
//
//  Created by RichK on 6/8/20.
//  Copyright © 2020 Rich Kummer. All rights reserved.
//

import SwiftUI

struct LottieLogin: View {
    var body: some View {
        VStack {
            LottieView(filename: "Login")
                .frame(width: 400, height: 250)
        }
    }
}

struct LottieLogin_Previews: PreviewProvider {
    static var previews: some View {
        LottieLogin()
    }
}
