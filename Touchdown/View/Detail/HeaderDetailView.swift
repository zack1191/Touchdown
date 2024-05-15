//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Hein Htet Aung on 2024/05/15.
//

import SwiftUI

struct HeaderDetailView: View {
    @EnvironmentObject var shop:Shop
    
    var body: some View {
        VStack(alignment: .leading,spacing: 6){
            Text("Protective Gear")
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
        .foregroundColor(.white)

        
    }
}

#Preview {
    HeaderDetailView().background(Color.gray).environmentObject(Shop())
}
