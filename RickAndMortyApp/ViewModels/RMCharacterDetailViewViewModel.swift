//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMortyApp
//
//  Created by Chioma Amanda Mmegwa  on 13/07/2023.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character:RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
