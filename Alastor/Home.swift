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
    
    var body: some View {
        TabView() {
            
            NavigationView{
                DailyView(ASCI: $ASCI, FNG: $FNG)
            }.tabItem {
                Label("Daily View", systemImage: "calendar.day.timeline.leading")
            }
            
            NavigationView{
                TopCoinsView()
            }.tabItem {
                Label("Top Coins", systemImage: "bitcoinsign.circle")
            }
            
        }
    }
}
