//
//  FetchCollectionStatsUseCase.swift
//  BAYC
//
//  Created by Jason Schneider on 1/10/23.
//

import Foundation

protocol FetchCollectionStatsUseCase {
    func execute() async throws -> OpenSeaCollectionStats
}
