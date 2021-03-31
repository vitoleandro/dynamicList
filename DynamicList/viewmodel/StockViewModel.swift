//
//  StockViewModel.swift
//  DynamicList
//
//  Created by Leandro Vitor on 30/03/21.
//

import Foundation

class StocksViewModel: ObservableObject {
    @Published var stocks: [Stock] = [
        Stock(title: "Apple"),
        Stock(title: "Apple"),
        Stock(title: "Apple"),
        Stock(title: "Apple")
    ]
    
}
