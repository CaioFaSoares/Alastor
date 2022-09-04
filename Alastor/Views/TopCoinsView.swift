//
//  TopCoinsView.swift
//  Alastor
//
//  Created by Caio Soares on 02/09/22.
//

import SwiftUI

struct TopCoinsView: View {
    
    @State private var searchCoin = ""
    
    @Binding var coins: [Coin]
    
    var body: some View {
        VStack {
            List {
                if !searchedCoins.isEmpty {
                    Section {
                            ForEach (searchedCoins, id: \.id) { coin in
                                HStack {
                                    AsyncImage(url: URL(string: coin.image)!) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    } .frame(width: 20, height: 20)
                                    Text(coin.name)
                                        .fontWeight(.bold)
                                    Spacer()
                                    VStack (alignment: .trailing){
                                        Text("\(isChoicePositiveIndicator(input: coin.priceChangePercentage24h))\(String(format: "%.2f", coin.priceChangePercentage24h))%")
                                            .font(.system(size: 14))
                                            .fontWeight(.bold)
                                            .foregroundColor(isChoicePositiveColor(input: coin.priceChangePercentage24h))
                                        Text(String(format: "$ %.2f", coin.price))
                                            .font(.system(size: 14))
                                            .fontWeight(.light)
                                            .foregroundColor(Color.gray)
                                    }
                                }
                            }
    //                    com_AC_AllCoinsByMarketCap(coins: $searchedCoins)
                    } header: {
                        Text("Rankeado por MarketCap")
                    } footer: {
                        Text("Dados da Coingecko")
                    }
                }
            }
            .navigationTitle("Top 20 Moedas")
            .navigationBarTitleDisplayMode(.large)
            .listStyle(.grouped)
            .searchable(text: $searchCoin, placement: .navigationBarDrawer(displayMode: .always))
            .overlay {
                if searchedCoins.isEmpty {
                    NotFoundList()
                }
            }
        }
    }
    
    var searchedCoins: [Coin] {
        if searchCoin.isEmpty {
            return self.coins
         } else {
            return coins.filter {
                $0.name.contains(searchCoin)
            }
        }
    }
}
