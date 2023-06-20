//
//  ViewController.swift
//  RickAndMortyApp
//
//  Created by Chioma Amanda Mmegwa  on 20/06/2023.
//

import UIKit

final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
//        testIfURLPathIsCorrect()
    }
    
    // My own function to test if the URL path is correct
//    private func testIfURLPathIsCorrect() {
//        let request = RMRequest(
//            endpoint: .location,
//            pathComponents: ["1"],
//            queryComponents: [
//            URLQueryItem(name: "name", value: "rick"),
//            URLQueryItem(name: "status", value: "alive")
//            ])
//        print(request.url)
//    }
    
    private func setupTabs() {
        let characterVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let episodeVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        
        let nav1 = UINavigationController(rootViewController: characterVC)
        let nav2 = UINavigationController(rootViewController: locationVC)
        let nav3 = UINavigationController(rootViewController: episodeVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Characters",
                                       image: UIImage(systemName: "person"),
                                       tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Locations",
                                       image: UIImage(systemName: "globe"),
                                       tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episodes",
                                       image: UIImage(systemName: "tv"),
                                       tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings",
                                       image: UIImage(systemName: "gear"),
                                       tag: 4)
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
            nav.navigationItem.largeTitleDisplayMode = .automatic
        }
        
        setViewControllers([nav1, nav2, nav3, nav4],
                           animated: true)
    }
}

