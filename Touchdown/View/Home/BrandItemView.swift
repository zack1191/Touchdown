//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Hein Htet Aung on 2024/05/15.
//

import SwiftUI

struct BrandItemView: View {
    let brand:Brand
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray,lineWidth: 1))
    }
}

#Preview {
    BrandItemView(brand: brands[0])
}
