//
//  isCoinPositive.swift
//  Alastor
//
//  Created by Caio Soares on 04/09/22.
//

import Foundation
import SwiftUI

func isChoicePositiveIndicator(input: Double) -> String {
    
    if input >= 0 {
        return "+"
    } else {
        return ""
    }
    
}

func isChoicePositiveColor(input: Double) -> Color {
    
    if input >= 0 {
        return Color.green
    } else {
        return Color.red
    }
    
}
