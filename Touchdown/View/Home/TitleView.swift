//
//  TitleView.swift
//  Touchdown
//
//  Created by Hein Htet Aung on 2024/05/15.
//

import SwiftUI

struct TitleView: View {
    var title:String
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top,15)
        .padding(.bottom,10)
    }
}

#Preview {
    TitleView(title: "Helmet")
}
