//
//  CurrencyComponent.swift
//  LOTRConverter17
//
//  Created by Angel Martínez Escobar on 12/01/24.
//

import SwiftUI

struct CurrencyComponent: View {
    @State var currencyAmount = ""
    @Binding var currency: Currency
    @Binding var showSelectCurrency: Bool
    let isRight: Bool
    
    var body: some View {
        VStack {
            HStack {
                if (!isRight) {
                    Image(currency.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                }
                Text(currency.name)
                    .font(.headline)
                    .foregroundStyle(.white)
                
                if (isRight) {
                    Image(currency.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                }
            }
            .padding(.bottom, -5)
            .onTapGesture {
                showSelectCurrency.toggle()
            }
            
            TextField("Amount", text: $currencyAmount)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.trailing)
        }
    }
}

#Preview {
    CurrencyComponent(currency: .constant(.silverPiece), showSelectCurrency: .constant(false), isRight: true)
}
