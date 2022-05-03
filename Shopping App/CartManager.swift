//
//  File.swift
//  Shopping App
//
//  Created by thphiem on 02/05/2022.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0

    func addToCart(product: Product) {
        if products.isEmpty == true {
            products.append(product)
        }
        else{
            var flag:Bool = false
            for i in 0...products.count-1 {
                if(products[i].id == product.id ) {
                    flag = true
                }
            }
            
            if(flag == false ) {
                products.append(product)
            }
        }
        if let index = products.firstIndex(where: {$0.id == product.id}) {
            products[index].numberOfProduct += 1
        }
        
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        if let index = products.firstIndex(where: {$0.id == product.id}) {
            if products[index].numberOfProduct == 1 {
                products.remove(at: index)
                total -= product.price
            }
            else {
                products[index].numberOfProduct -= 1
                total -= product.price
            }
        }
    }
    
    func removeAllItem (product: Product) {
        var temp: Int?
        if let index = products.firstIndex(where: {$0.id == product.id}) {
            temp = products[index].numberOfProduct
            total -= (temp! * product.price)
        }
        products = products.filter { $0.id != product.id }
              
    }
}
