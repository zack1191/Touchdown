//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Hein Htet Aung on 2024/05/15.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop:Shop
    
    var body: some View {
        VStack(alignment: .leading,spacing: 5){
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,UIApplication.shared.connectedScenes.compactMap{$0 as? UIWindowScene
                }.first?.keyWindow?.safeAreaInsets.top ?? 0)
            HeaderDetailView()
                .padding(.horizontal)
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            VStack(alignment: .center,spacing: 0){
                RatingsSizesDetailView()
                    .padding(.top,-20)
                    .padding(.bottom,10)
                ScrollView(.vertical,showsIndicators: false){
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body,design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                QuantityFavouriteDetailView()
                    .padding(.vertical,10)
                AddToCartDetailView()
                    .padding(.bottom,20)
                
            }
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomShape())
                .padding(.top,-105)
)
        }
        .ignoresSafeArea(.all,edges: .all)
        .background(Color(red: shop.selectedProduct?.red ?? sampleProduct.red
                          , green: shop.selectedProduct?.green ??  sampleProduct.green, blue: shop.selectedProduct?.blue ??  sampleProduct.blue))
    }
}

#Preview {
    ProductDetailView().environmentObject(Shop())
}
