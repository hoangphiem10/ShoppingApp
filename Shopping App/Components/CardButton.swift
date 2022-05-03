//
//  CardButton.swift
//  Shopping App
//
//  Created by thphiem on 01/05/2022.
//

import SwiftUI

struct CardButton: View {
    var numberOfButtons: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
            
            if numberOfButtons > 0 {
                Text("\(numberOfButtons)")
                    .font(.caption2)
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.red)
                    .cornerRadius(50)
            }
                
        }
    }
}

struct CardButton_Previews: PreviewProvider {
    static var previews: some View {
        CardButton(numberOfButtons: 1)
    }
}
