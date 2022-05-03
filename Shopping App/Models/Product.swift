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
}

var productList: [Product] = [Product(name: "Stranger Things", price: 100, Image:                                       "T-shirt1"),
                              Product(name: "Angel Tee", price: 150, Image: "T-shirt2"),
                              Product(name: "Angel Tee oversize", price: 140, Image: "T-shirt3"),
                              Product(name: "Stay Rich", price: 160, Image: "T-shirt4"),
                              Product(name: "Angel-Tee", price: 170, Image: "T-shirt5"),
                              Product(name: "Leave the road", price: 180, Image: "T-shirt6"),
                              Product(name: "black oversize", price: 230, Image: "T-shirt8"),
                              Product(name: "black-oversize", price: 220, Image: "T-shirt9"),
                              Product(name: "white T-shirt", price: 200, Image: "T-shirt10"),]
