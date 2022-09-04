//
//  AlastorApp.swift
//  Alastor
//
//  Created by Caio Soares on 01/09/22.
//

import SwiftUI

@main
struct AlastorApp: App {
    
    @State var ASCI = Index(id: 1, indexFullName: "Altcoin Season Index", indexShortName: "ASCI", indexValue: "Fetching...")
    @State var FNG = Index(id: 2, indexFullName: "Fear and Greed", indexShortName: "FNG", indexValue: "Fetching...")
    
    @State var coins = [Coin]()
    
    var body: some Scene {
        WindowGroup {
            SplashScreen(ASCI: $ASCI, FNG: $FNG, coins: $coins)
                .task {
                    Task{
                        self.ASCI = await PlutoScraper.scrapeACSI()
                        self.FNG = await PlutoScraper.scrapeFNG()
                    }
                    Task{
                        self.coins = await GeckoAPI.getAllCoinsMarketData()
                    }
            }
        }
    }
}
