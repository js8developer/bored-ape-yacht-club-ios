//
//  OpenSeaCollectionStats.swift
//  BAYC
//
//  Created by Jason Schneider on 1/5/23.
//

import Foundation

struct OpenSeaCollectionStats: Codable {
    let one_day_volume: Double
    let one_day_change: Double
    let one_day_sales: Int
    let one_day_average_price: Double
 
    let seven_day_volume: Double
    let seven_day_change: Double
    let seven_day_sales: Int
    let seven_day_average_price: Double
    
    let thirty_day_volume: Double
    let thirty_day_change: Double
    let thirty_day_sales: Int
    let thirty_day_average_price: Double
    
    let total_volume: Double
    let total_sales: Double
    let total_supply: Double
    
    let count: Int
    let num_owners: Int
    
    let average_price: Double
    
    let num_reports: Int
    
    let market_cap: Double
    let floor_price: Double
}
