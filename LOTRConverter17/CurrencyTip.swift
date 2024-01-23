//
//  CurrencyTip.swift
//  LOTRConverter17
//
//  Created by Angel Martínez Escobar on 22/01/24.
//

import Foundation
import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    
    var message: Text? = Text("You can tap the left or right currency to bring up the Select Currency screen.")
}
