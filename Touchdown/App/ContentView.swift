    //
    //  ContentView.swift
    //  Touchdown
    //
    //  Created by Hein Htet Aung on 2024/05/14.
    //

import SwiftUI

struct ContentView: View {
        // MARK: - properties
    @EnvironmentObject var shop:Shop
        // MARK: - body
    
    var body: some View {
        if shop.showingProduct == false && shop.selectedProduct == nil{
            VStack(spacing:0) {
                NavigationBarView()
                    .padding()
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5,x:0,y:5)
                ScrollView(.vertical,showsIndicators: false,content: {
                    VStack(spacing:0) {
                        FeaturedTabView()
                            .padding(.vertical)
                            .frame(height: UIScreen.main.bounds.width/1.475)
                        CategoryGridView()
                        TitleView(title: "Helmets")
                        LazyVGrid(columns: gridLayout,spacing: 15, content: {
                            ForEach(products){product in
                                ProductItemView(product: product)
                                    .onTapGesture {
                                        feedback.impactOccurred()
                                        withAnimation(.easeOut){
                                            shop.selectedProduct = product
                                            shop.showingProduct = true
                                        }
                                    }
                            }
                        })
                        .padding(15)
                        TitleView(title: "Brands")
                        BrandGridView()
                        FooterView()
                            .padding(.horizontal)
                    }
                })
                
            }
            .background(colorBackground.ignoresSafeArea(.all,edges: .all))
        }else{
            ProductDetailView()
        }
    }
    
    
}

#Preview {
    ContentView().environmentObject(Shop())
}
