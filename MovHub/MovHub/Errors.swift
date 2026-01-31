//
//  Errors.swift
//  MovHub
//
//  Created by Hariom Kumar on 13/01/26.
//

import Foundation

enum APIConfigError: Error, LocalizedError {
    case fileNotFound
    case dataLoadingFailed(underlyingError: Error)
    case decodingFailed(underlyingError: Error)
    
    var errorDescription: String? {
        switch self {
        case .fileNotFound:
            return "File not found"
        case let .dataLoadingFailed(underlyingError: error):
            return "Data loading failed: \(error.localizedDescription)"
        case let .decodingFailed(underlyingError: error):
            return "Decoding failed: \(error.localizedDescription)"
        }
    }
}


enum NetworkError: Error, LocalizedError {
    case badURLResponse(underlyingError: Error)
    case missingConfig
    case urlBuildFailed
    
    var errorDescription: String? {
        switch self {
        case .badURLResponse(underlyingError: let error):
            return "Failed to parse URL response: \(error.localizedDescription)"
        case .missingConfig:
            return "Missing API configuration."
        case .urlBuildFailed:
            return "Failed to Build URL."
        }
    }
}
