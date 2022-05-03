//
//  CartView.swift
//  Shopping App
//
//  Created by thphiem on 02/05/2022.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if(cartManager.products.count > 0){
                ForEach(cartManager.products, id: \.id) {
                    product in
                    ProductRow(product: product)
                }
                HStack {
                    Text("Your cart total is: ")
                    Spacer()
                    Text("\(cartManager.total)$")
                }.padding()
            }
            else {
                Text("Your cart is empty")
            }
         
        }.navigationTitle("My cart")
            .padding(.top)
            
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
