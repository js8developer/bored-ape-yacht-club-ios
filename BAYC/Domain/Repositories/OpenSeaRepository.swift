//
//  OpenSeaRepository.swift
//  BAYC
//
//  Created by Jason Schneider on 1/10/23.
//

import Foundation

protocol OpenSeaRepository {
    func fetchCollectionStats() async throws -> OpenSeaCollectionStats
}
