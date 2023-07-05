//
//  RMCharacterViewController.swift
//  RickAndMortyApp
//
//  Created by Chioma Amanda Mmegwa  on 20/06/2023.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let response):
                print("Total: "+String(response.info.count))
                print("Total: "+String(response.results.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}
