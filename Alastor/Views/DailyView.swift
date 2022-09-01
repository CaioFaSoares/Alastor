//
//  DailyView.swift
//  Alastor
//
//  Created by Caio Soares on 01/09/22.
//

import SwiftUI

struct DailyView: View {
    
    @Binding var ASCI: Index
    @Binding var FNG: Index
    
    var body: some View {
        VStack{
            List{
                Section{
                    comMarketIndexes(ASCI: $ASCI, FNG: $FNG)
                } header: {
                    Text("Market Indexes")
                } footer: {
                    Text("Sources in the about page")
                }
            }
            .navigationTitle("Daily Overview")
            .listStyle(.grouped)
        }
    }
}
