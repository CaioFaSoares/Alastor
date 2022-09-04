//
//  ContentView.swift
//  Alastor
//
//  Created by Caio Soares on 01/09/22.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var ASCI: Index
    @Binding var FNG: Index
    
    @Binding var coins: [Coin]
    
    var body: some View {
        TabView() {
            
            NavigationView{
                DailyView(ASCI: $ASCI, FNG: $FNG)
            }.tabItem {
                Label("Daily View", systemImage: "calendar.day.timeline.leading")
            }
            
            NavigationView{
                TopCoinsView(coins: $coins)
            }.tabItem {
                Label("Top Coins", systemImage: "bitcoinsign.circle")
            }
            
        }
    }
}
