//
//  StockRow.swift
//  DynamicList
//
//  Created by Leandro Vitor on 30/03/21.
//

import Foundation
import SwiftUI

struct StockRow: View {
    let title: String
    
    var body: some View {
        Label(
            title: { Text(title) },
            icon: { Image(systemName: "chart.bar") }
        )
    }
}
