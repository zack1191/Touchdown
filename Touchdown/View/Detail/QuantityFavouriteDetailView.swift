    //
    //  QuantityFavouriteDetail.swift
    //  Touchdown
    //
    //  Created by Hein Htet Aung on 2024/05/15.
    //

import SwiftUI

struct QuantityFavouriteDetailView: View {
    @State private var counter:Int = 0
    var body: some View {
        HStack(alignment: .center,spacing: 6) {
            Button{
                if counter>0{
                    feedback.impactOccurred()
                    counter -= 1
                }
            }label: {
                Image(systemName: "minus.circle")
            }
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            Button{
                if counter<100{
                    feedback.impactOccurred()
                    counter += 1
                }
            }label: {
                Image(systemName: "plus.circle")
            }
            Spacer()
            Button{
                feedback.impactOccurred()
            }label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }
        }
        .font(.system(.title,design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

#Preview {
    QuantityFavouriteDetailView()
}
