//
//  ContentView.swift
//  DynamicList
//
//  Created by Leandro Vitor on 30/03/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = StocksViewModel()
    @State var text = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Section(header: Text("Add a new stock")) {
                    TextField("Company Name", text: $text)
                        .padding()
                    Button(
                        action: {
                            self.tryToAddToList()
                        },
                        label: {
                            Text("Add to list")
                                .bold()
                                .frame(width: 250, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(Color.green)
                                .foregroundColor(Color.white)
                                .cornerRadius(8)
                        }
                    )
                }
                List {
                    ForEach(viewModel.stocks) { stock in
                        StockRow(title: stock.title)
                    }
                }
            }
            .navigationTitle("Stocks")
        }
        
    }
    
    func tryToAddToList() {
        guard !text.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        
        let newStock = Stock(title: text)
        viewModel.stocks.append(newStock)
        text = ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
