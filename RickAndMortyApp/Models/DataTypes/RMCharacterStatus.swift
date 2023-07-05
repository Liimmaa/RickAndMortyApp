//
//  RMCharacterStatus.swift
//  RickAndMortyApp
//
//  Created by Chioma Amanda Mmegwa  on 28/06/2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
    
    var text: String {
        switch self {
        case .alive, .dead:
            return rawValue
        case .unknown:
            return "Unknown"
        }
    }
}
