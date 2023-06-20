//
//  RMService.swift
//  RickAndMortyApp
//
//  Created by Chioma Amanda Mmegwa  on 20/06/2023.
//

import Foundation

/// Primary API Service object to get Rick and Morty data. Responsible for the actual APICalls

final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    /// privatized constructor
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void) {
        
    }
}
