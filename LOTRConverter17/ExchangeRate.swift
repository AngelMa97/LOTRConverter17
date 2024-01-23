//
//  ExchangeRate.swift
//  LOTRConverter17
//
//  Created by Angel Martínez Escobar on 16/01/24.
//

import Foundation
import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let description: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack {
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            Text(description)
            
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .goldpenny, description: "1 Gold Penny = 4 Silver Pieces", rightImage: .silverpiece)
}
