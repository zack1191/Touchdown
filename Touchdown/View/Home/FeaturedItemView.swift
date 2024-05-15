//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Hein Htet Aung on 2024/05/14.
//

import SwiftUI

struct FeaturedItemView: View {
    let player:Player
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    FeaturedItemView(player: players[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
