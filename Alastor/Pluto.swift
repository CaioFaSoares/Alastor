//
//  pluto.swift
//  Alastor
//
//  Created by Caio Soares on 01/09/22.
//

import Foundation
import SwiftSoup

class PlutoScraper {
    
    //Scraping the Altcoin Season Index Website
    static func scrapeACSI() async -> Index {
        
        let ACSIURL: URL = URL(string: "https://www.blockchaincenter.net/en/altcoin-season-index/")!
        let request = URLRequest(url: ACSIURL)
        
        do {
            let html = try! String(contentsOf: ACSIURL, encoding: .utf8)
            let doc: Document = try! SwiftSoup.parse(html)
            
            let p: Element = try! doc.select("#season > div > div > div:nth-child(3) > div:nth-child(1)").first()!
            
            print(try! p.text())
            
            let localIndexValue = try! p.text()
            
            return Index(id: 1, indexFullName: "Altcoin Season Index", indexShortName: "ACSI", indexValue: localIndexValue)
            
        } catch Exception.Error(type: let type, Message: let message) {
            print(type)
            print(message)
        }
        
        return Index(id: 1, indexFullName: "Altcoin Season Index", indexShortName: "ASCI", indexValue: "Could not fetch")
        
    }
    
    //Scraping the Fear and Greed Website
    static func scrapeFNG() async -> Index {
        
        let FNGURL: URL = URL(string: "https://alternative.me/crypto/fear-and-greed-index/")!
        let request = URLRequest(url: FNGURL)
        
        do {
            let html = try! String(contentsOf: FNGURL, encoding: .utf8)
            let doc: Document = try! SwiftSoup.parse(html)
            
            let p: Element = try! doc.select("#main > section > div > div.columns > div:nth-child(2) > div > div > div:nth-child(1) > div:nth-child(2) > div").first()!
            
            print(try! p.text())
            
            let localIndexValue = try! p.text()
            
            return Index(id: 2, indexFullName: "Fear and Greed Index", indexShortName: "FNG", indexValue: localIndexValue)
            
        } catch Exception.Error(type: let type, Message: let message) {
            print(type)
            print(message)
        }
        
        return Index(id: 2, indexFullName: "Fear and Greed Index", indexShortName: "FNG", indexValue: "Could not fetch")
        
    }
    
}
