//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Hein Htet Aung on 2024/05/15.
//

import SwiftUI

struct TopPartDetailView: View {
    @EnvironmentObject var shop:Shop
    @State private var isAnimating :Bool = false
    var body: some View {
        HStack(alignment: .center,spacing: 6){
            VStack(alignment: .leading,spacing: 6){
                Text("Price")
                Text(shop.selectedProduct?.formattedPrice ??
                    sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35,anchor: .leading)
            }
            .offset(y:isAnimating ? -50 : -75)
            Spacer()
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y:isAnimating ? 0 : -35)
        }
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)){
                isAnimating.toggle()
            }
        })
        
    }
}

#Preview {
    TopPartDetailView().environmentObject(Shop())
}