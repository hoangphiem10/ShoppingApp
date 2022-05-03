//
//  Product.swift
//  Shopping App
//
//  Created by thphiem on 01/05/2022.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var price: Int
    var Image: String
    var numberOfProduct: Int
}

var productList: [Product] = [Product(name: "Stranger Things", price: 100, Image:                                       "T-Shirt1",numberOfProduct: 0),
                              Product(name: "Angel Tee", price: 150, Image: "T-Shirt2",numberOfProduct: 0),
                              Product(name: "Angel Tee oversize", price: 140, Image: "T-shirt3",numberOfProduct: 0),
                              Product(name: "Stay Rich", price: 160, Image: "T-shirt4",numberOfProduct: 0),
                              Product(name: "Angel-Tee", price: 170, Image: "T-shirt5",numberOfProduct: 0),
                              Product(name: "Leave the road", price: 180, Image: "T-shirt6",numberOfProduct: 0),
                              Product(name: "black oversize", price: 230, Image: "T-shirt8",numberOfProduct: 0),
                              Product(name: "black-oversize", price: 220, Image: "T-shirt9",numberOfProduct: 0),
                              Product(name: "white T-shirt", price: 200, Image: "T-shirt10",numberOfProduct: 0)]
