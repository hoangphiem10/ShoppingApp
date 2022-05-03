//
//  ProductRow.swift
//  Shopping App
//
//  Created by thphiem on 02/05/2022.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        HStack (spacing: 20) {
            Image(product.Image)
                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(product.name)
                    .bold()
                Text("\(product.price)$")
                    
            }
            
            Spacer()
            
            HStack{
                Button {
                    cartManager.removeFromCart(product: product)
                } label: {
                    Image(systemName: "minus")
                         .foregroundColor(.red)
                }
             
//                Spacer()
                
                Text("\(product.numberOfProduct)")
                    .frame(width: 25, height: 20)
//                Spacer()

                Button {
                    cartManager.addToCart(product: product)
                } label: {
                    Image(systemName: "plus")
                         .foregroundColor(.red)
                }

            }
            
            Spacer()
            
            Button {
                cartManager.removeAllItem(product: product)
            } label: {
                Image(systemName: "trash")
                     .foregroundColor(.red)
            }

        }.padding()
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[0])
            .environmentObject(CartManager())
    }
}
