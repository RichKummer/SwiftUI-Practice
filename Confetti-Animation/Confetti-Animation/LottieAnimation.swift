//
//  LottieAnimation.swift
//  Confetti-Animation
//
//  Created by RichK on 7/19/20.
//  Copyright © 2020 Rich Kummer. All rights reserved.
//

import SwiftUI

struct LottieAnimation: View {
    var body: some View {
        VStack {
            LottieView(filename: "Confetti2")
                .frame(width: 400, height: 250)
        }
    }
}

struct LottieAnimation_Previews: PreviewProvider {
    static var previews: some View {
        LottieAnimation()
    }
}

