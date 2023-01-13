//
//  TimeframeStatsModel.swift
//  BAYC
//
//  Created by Jason Schneider on 1/5/23.
//

import Foundation

struct TimeframeStatsModel: Identifiable {
    let id = UUID()
    let volume: Double
    let percentChange: Double
    let sales: Int
    let averagePrice: Double
}
