    //
    //  DetailView.swift
    //  Touchdown
    //
    //  Created by Hein Htet Aung on 2024/05/15.
    //

import SwiftUI

struct NavigationBarDetailView: View {
    @EnvironmentObject var shop:Shop
    var body: some View {
        HStack{
            Button{
                withAnimation(.easeIn){
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            Spacer()
            Button{
                feedback.impactOccurred()
            }label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    NavigationBarDetailView().previewLayout(.sizeThatFits)
        .background(Color.gray).environmentObject(Shop())
}
