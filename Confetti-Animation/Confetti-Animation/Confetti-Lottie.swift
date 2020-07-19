//
//  Confetti-Lottie.swift
//  Confetti-Animation
//
//  Created by RichK on 7/19/20.
//  Copyright © 2020 Rich Kummer. All rights reserved.
//

import SwiftUI

struct Confetti_Lottie: View {
    var body: some View {
        VStack {
            LottieView(filename: "Confetti-animation")
                .frame(width: 400, height: 250)
        }
    }
}

struct Confetti_Lottie_Previews: PreviewProvider {
    static var previews: some View {
        Confetti_Lottie()
    }
}
