//
//  NetworkError.swift
//  BAYC
//
//  Created by Jason Schneider on 1/10/23.
//

import Foundation

enum NetworkError: Error, CustomStringConvertible {
    
    case badUrl
    case urlSession(URLError?)
    case badResponse(Int)
    case decoding(DecodingError?)
    case unknown
    
    var description: String {
        switch self {
        case .badUrl:
            return "badUrl"
        case .urlSession(let error):
            return "urlSession: \(error.debugDescription)"
        case .badResponse(let statusCode):
            return "badResponse with status code: \(statusCode)"
        case .decoding(let decodingError):
            return "decoding error: \(String(describing: decodingError))"
        case .unknown:
            return "unknown error occurred."
        }
    }
    
    var localizedDescription: String {
        return description
    }
    
}
