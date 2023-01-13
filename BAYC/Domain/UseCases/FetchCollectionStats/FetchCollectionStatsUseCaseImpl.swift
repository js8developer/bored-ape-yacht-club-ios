//
//  FetchCollectionStatsUseCaseImpl.swift
//  BAYC
//
//  Created by Jason Schneider on 1/10/23.
//

import Foundation

class FetchCollectionStatsUseCaseImpl {
    
    // MARK: - Private Properties
    
    private let openSeaRepository: OpenSeaRepository
    
    
    // MARK: - Init
    
    init(openSeaRepository: OpenSeaRepository = OpenSeaRepositoryImpl()) {
        self.openSeaRepository = openSeaRepository
    }
    
}


// MARK: - FetchCollectionStatsUseCase Protocol Methods

extension FetchCollectionStatsUseCaseImpl: FetchCollectionStatsUseCase {
    
    /// Execute the Use Case: FetchCollectionStats
    ///
    /// - Returns: The up-to-date stats data for the BAYC collection
    ///
    func execute() async throws -> OpenSeaCollectionStats {
        return try await openSeaRepository.fetchCollectionStats()
    }
    
}
