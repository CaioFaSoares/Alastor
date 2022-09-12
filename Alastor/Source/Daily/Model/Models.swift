//
//  index.swift
//  Alastor
//
//  Created by Caio Soares on 01/09/22.
//

import Foundation

struct Index: Decodable {
    
    let id: Int
    let indexFullName: String
    let indexShortName: String
    let indexValue: String
    
}

struct LookOutCoin: Decodable {
    
    var id: String //bitcoin
    var name: String // Bitcoin
    var commentary: String //Comentário do analista sobre a moeda em questão
    
    var price: Double
    var priceChangePercentage24h: Double
    
    var high24h: Double
    var low24h: Double
    
    var image: String
    
    enum CodingKeys: String, CodingKey {
        case id, name, image, commentary
        case price = "current_price"
        case priceChangePercentage24h = "price_change_percentage_24h"
        case high24h = "high_24h"
        case low24h = "low_24h"
        
    }
    
}
