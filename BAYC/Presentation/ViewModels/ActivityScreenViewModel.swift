//
//  ActivityScreenViewModel.swift
//  BAYC
//
//  Created by Jason Schneider on 8/20/22.
//

import Foundation
import SwiftUI

class ActivityScreenViewModel: ObservableObject {
    
    // MARK: - Public Properties
    
    let sheetTitleText: String = "Market Activity"
    
    @Published var collectionStats: OpenSeaCollectionStats = EmptyData.openSeaCollectionStats
    @Published var selectedIndex: Int = 0
    
    var timeframeStats: TimeframeStatsModel { statsDuringTimeframe() }
    
    var timeframeDisplayText: String {
        switch selectedIndex {
        case 0: return "Last 24 hours"
        case 1: return "Last 7 days"
        default: return "Last 30 days"
        }
    }
    
    
    // MARK: - Use Cases
    
    private let fetchCollectionStatsUseCase: FetchCollectionStatsUseCase
    
    
    // MARK: - Init
    
    init(fetchCollectionStatsUseCase: FetchCollectionStatsUseCase = FetchCollectionStatsUseCaseImpl()){
        self.fetchCollectionStatsUseCase = fetchCollectionStatsUseCase
        // Create Task to run asynchronous work
        Task {
            await loadCollectionStats()
        }
    }
    
}


// MARK: - Private Methods

extension ActivityScreenViewModel {
    
    /// Load the recent BAYC collection stats
    ///
    private func loadCollectionStats() async {
        do {
            let stats: OpenSeaCollectionStats = try await fetchCollectionStatsUseCase.execute()
            setCollectionStats(stats: stats)
        } catch {
            handleError(error: error)
        }
    }
    
    /// Sets the loaded stats on the main thread
    ///
    /// - Parameter stats: The stats loaded from the request
    ///
    private func setCollectionStats(stats: OpenSeaCollectionStats){
        DispatchQueue.main.async { [weak self] in
            self?.collectionStats = stats
        }
    }
    
    /// Handles any errors thrown from requests
    ///
    /// - Parameter error: The error thrown
    ///
    private func handleError(error: Error){
        // FIXME: Handle errors
        print(error.localizedDescription)
    }
    
    /// Provide the correct data for the timeframe that is currently selected (0, 1, 2)
    ///
    /// - Returns: The correct data for the timeframe select (24h, 7d, 30d)
    ///
    private func statsDuringTimeframe() -> TimeframeStatsModel {
        let stats = collectionStats
        
        switch selectedIndex {
        case 0:
            return TimeframeStatsModel(
                volume: stats.one_day_volume,
                percentChange: stats.one_day_change,
                sales: stats.one_day_sales,
                averagePrice: stats.one_day_average_price
            )
        case 1:
            return TimeframeStatsModel(
                volume: stats.seven_day_volume,
                percentChange: stats.seven_day_change,
                sales: stats.seven_day_sales,
                averagePrice: stats.seven_day_average_price
            )
        default: // case 2
            return TimeframeStatsModel(
                volume: stats.thirty_day_volume,
                percentChange: stats.thirty_day_change,
                sales: stats.thirty_day_sales,
                averagePrice: stats.thirty_day_average_price
            )
        }
    }
    
}
