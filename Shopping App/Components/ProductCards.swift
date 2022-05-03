//
//  ProductCards.swift
//  Shopping App
//
//  Created by thphiem on 01/05/2022.
//

import SwiftUI

struct ProductCards: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        ZStack(alignment: .topTrailing){
            ZStack(alignment: .bottom) {
                Image(product.Image)
                    .resizable()
                    .cornerRadius(20)
                VStack(alignment: .leading){
                    Text(product.name)
                        .foregroundColor(.black)
                        .bold()
                    Text("\(product.price)$")
                        .foregroundColor(.black)
                        .font(.caption)
                }.padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            
            Button {
                cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(8)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }

        }

    }
}

struct ProductCards_Previews: PreviewProvider {
    static var previews: some View {
        ProductCards(product: productList[0])
            .environmentObject(CartManager())
    }
}
