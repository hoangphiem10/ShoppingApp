//
//  ContentView.swift
//  Shopping App
//
//  Created by thphiem on 01/05/2022.
//

import SwiftUI

struct ContentView: View {
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns,spacing: 20){
                    ForEach(productList, id: \.id){
                        product in
                        ProductCards(product: product)
                    }
                }.padding()
                    .navigationTitle("T-shirt Shop")
                    .toolbar {
                        CardButton(numberOfButtons: 1)
                    }
            }
         
        }
  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
