//
//  FooterView.swift
//  Touchdown
//
//  Created by Hein Htet Aung on 2024/05/14.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment:.center,spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            Text("Copyright © Robert Petras\nAll right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }//: VStack
        .padding()
    }
}

#Preview {
    FooterView().previewLayout(.sizeThatFits)
        .background(colorBackground)
}
