//
//  URLSessionService.swift
//  BAYC
//
//  Created by Jason Schneider on 1/10/23.
//

import Foundation

class URLSessionService { }


// MARK: - NetworkingService Protocol Methods

extension URLSessionService: NetworkingService {
    
    /// Makes an HTTP 'GET' request and returns the data parsed into the requested data model object type
    ///
    /// - Parameters:
    ///   - type: The generic decodable data model object type for the data to be parsed into
    ///   - url: The url endpoint of where we will be making our request
    /// - Returns: The data decoded into the data model object type requested
    ///
    func httpGet<T>(type: T.Type, url: URL?) async throws -> T where T : Decodable {
        guard let url = url else { throw NetworkError.badUrl }
        let (data, response) = try await URLSession.shared.data(from: url)
        if !responseIsSuccess(response: response) { throw NetworkError.badResponse(500) }
        return try parseResults(type: type, data: data)
    }
    
}


// MARK: - Private Methods

extension URLSessionService {
    
    /// Checks if the response is successful
    ///
    /// - Parameter response: The response returned from our request
    /// - Returns: Whether or not the response's status code resulted in a success or not
    ///
    private func responseIsSuccess(response: URLResponse) -> Bool {
        guard let response = response as? HTTPURLResponse else { return false }
        return statusCodeIsSuccess(statusCode: response.statusCode)
    }
    
    /// Checks if the status code is a success
    ///
    /// - Parameter statusCode: The status code returned from the response
    /// - Returns: Whether or not the status code provided is a success or not
    ///
    private func statusCodeIsSuccess(statusCode: Int) -> Bool {
        return (200...299).contains(statusCode)
    }
    
    /// Parses the data provided into the specified data model object type
    ///
    /// - Parameters:
    ///   - type: The generic decodable data model object type for the data to be parsed into
    ///   - data: The data to parse
    /// - Returns: The data decoded into the data model object type requested
    ///
    private func parseResults<T: Decodable>(type: T.Type, data: Data) throws -> T {
        return try JSONDecoder().decode(type, from: data)
    }
    
}
