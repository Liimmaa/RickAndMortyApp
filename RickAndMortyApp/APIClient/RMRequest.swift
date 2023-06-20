//
//  RMRequest.swift
//  RickAndMortyApp
//
//  Created by Chioma Amanda Mmegwa  on 20/06/2023.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
    /// API Constants
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
   
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path components for API, if any
    private let pathComponents: Set<String>
    
    /// Query components for API, if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var url = Constants.baseURL
        url += "/"
        url += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                url += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            url += "?"
            // name=value&name=vlaue&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            url += argumentString
        }
        
        return url
    }
    /// Computed and constructed  API url. Url is optional because it is failable so we want to handle that
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired HTTP method
    public let HTTPMethod = "GET "
    
    // MARK: - Public
    
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of path components
    ///   - queryParameters: Collection of query parameters
    public init(
        endpoint: RMEndpoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []) {
            self.endpoint = endpoint
            self.pathComponents = pathComponents
            self.queryParameters = queryParameters
    }
}
