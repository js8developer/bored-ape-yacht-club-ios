//
//  NetworkingService.swift
//  BAYC
//
//  Created by Jason Schneider on 1/10/23.
//

import Foundation

protocol NetworkingService {
    func httpGet<T: Decodable>(type: T.Type, url: URL?) async throws -> T
}
