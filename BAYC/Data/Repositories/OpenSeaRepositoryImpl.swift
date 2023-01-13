//
//  OpenSeaRepository.swift
//  BAYC
//
//  Created by Jason Schneider on 1/10/23.
//

import Foundation

class OpenSeaRepositoryImpl {
    
    // MARK: - Private Properties
    
    private let networkingService: NetworkingService
    
    
    // MARK: - Init
    
    init(networkingService: NetworkingService = URLSessionService()) {
        self.networkingService = networkingService
    }
    
}


// MARK: - OpenSeaRepository Protocol Methods

extension OpenSeaRepositoryImpl: OpenSeaRepository {
    
    /// Create a network request and fetch the up-to-date stats data for the BAYC collection
    ///
    /// - Returns: The up-to-date stats data for the BAYC collection
    ///
    func fetchCollectionStats() async throws -> OpenSeaCollectionStats {
        let url = createOpenSeaUrlRequest().url
        let collectionData = try await networkingService.httpGet(type: OpenSeaResponse.self, url: url)
        return collectionData.stats
    }
    
}


// MARK: - Private Methods

extension OpenSeaRepositoryImpl {
    
    /// Creates the request for the OpenSea fetch method.
    ///
    /// - Returns: The url request object containing the url for the OpenSea endpoint
    ///
    private func createOpenSeaUrlRequest() -> NSMutableURLRequest {
        let headers = ["Accept": "application/json"]
        let request = NSMutableURLRequest(
            url: NSURL(string: Endpoints.OpenSea.statsData)! as URL,
            cachePolicy: .useProtocolCachePolicy,
            timeoutInterval: 10.0
        )
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        return request
    }
    
}
