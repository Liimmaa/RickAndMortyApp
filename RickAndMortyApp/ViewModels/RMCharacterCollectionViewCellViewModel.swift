//
//  RMCharacterCollectionViewCellViewModel.swift
//  RickAndMortyApp
//
//  Created by Chioma Amanda Mmegwa  on 05/07/2023.
//

import Foundation

final class RMCharacterCollectionViewCellViewModel: Hashable {
    
    public let characterName: String
    private let characterStatus: RMCharacterStatus
    private let characterImageURL: URL?
    
    // MARK: - Init
     
    init(
        characterName: String,
        characterStatus: RMCharacterStatus,
        characterImageURL: URL?)
    {
        self.characterName = characterName
        self.characterStatus = characterStatus
        self.characterImageURL = characterImageURL
    }
    
    public var characterStatusText: String {
        return "Status: \(characterStatus.text)"
    }
    
    public func fetchImage(completion: @escaping (Result<Data, Error>) -> Void) {
        guard let url = characterImageURL else {
            completion(.failure(URLError(.badURL )))
            return
        }
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data, error == nil else  {
                completion(.failure(URLError(.badServerResponse )))
                return
            }
            completion(.success(data))
        }
        task.resume()
    }
    
    // MARK: - Hashable
    
    static func == (lhs: RMCharacterCollectionViewCellViewModel, rhs: RMCharacterCollectionViewCellViewModel) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(characterName)
        hasher.combine(characterStatus)
        hasher.combine(characterImageURL)
    }
}
