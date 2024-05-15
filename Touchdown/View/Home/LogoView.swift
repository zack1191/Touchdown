//
//  LogoView.swift
//  Touchdown
//
//  Created by Hein Htet Aung on 2024/05/14.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing:4){
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30,height: 30,alignment:.center)
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    LogoView()
        .previewLayout(.sizeThatFits)
        .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
}
