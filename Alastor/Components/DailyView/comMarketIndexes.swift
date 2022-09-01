//
//  comMarketIndexes.swift
//  Alastor
//
//  Created by Caio Soares on 01/09/22.
//

import SwiftUI

struct comMarketIndexes: View {
    
    @Binding var ASCI: Index
    @Binding var FNG: Index
    
    var body: some View {
        Section {
            HStack {
                Text(ASCI.indexFullName)
                    .fontWeight(.bold)
                Spacer()
                Text("\(ASCI.indexValue)%")
                    .fontWeight(.bold)
                    .foregroundColor(comMarketIndexes.indexValueColor(indexValue: ASCI.indexValue))
            }
            HStack {
                Text(FNG.indexFullName)
                    .fontWeight(.bold)
                Spacer()
                Text("\(FNG.indexValue)%")
                    .fontWeight(.bold)
                    .foregroundColor(comMarketIndexes.indexValueColor(indexValue: FNG.indexValue))
            }
            
        }
        
    }
    
    static func indexValueColor(indexValue: String) -> Color {
        
        let makeValueIntoInt = Int(indexValue) ?? -1
        
        if makeValueIntoInt == -1 {
            return Color.accentColor
        }
        if makeValueIntoInt >= 50 {
            return Color.green
        }
        if makeValueIntoInt < 50 && makeValueIntoInt >= 30 {
            return Color.orange
        } else {
            return Color.red
        }
        
    }
    
}
