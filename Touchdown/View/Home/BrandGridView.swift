//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Hein Htet Aung on 2024/05/15.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            LazyHGrid(rows: gridLayout,spacing: columnSpacing){
                ForEach(brands){brand in
                    BrandItemView(brand: brand)
                    
                }
            }
            .frame(height: 200)
            .padding(15)
        }
    }
}

#Preview {
    BrandGridView()
}
