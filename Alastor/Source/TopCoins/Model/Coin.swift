//
//  Coin.swift
//  Alastor
//
//  Created by Caio Soares on 04/09/22.
//

import Foundation

struct Coin: Codable {
    
    var id: String
    var symbol: String
    var image: String
    var name: String
    var price: Double
    var priceChangePercentage24h: Double
    var high24h: Double
    var low24h: Double
    
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case price = "current_price"
        case priceChangePercentage24h = "price_change_percentage_24h"
        case high24h = "high_24h"
        case low24h = "low_24h"
        
    }
    
}
