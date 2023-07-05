//
//  Extensions.swift
//  RickAndMortyApp
//
//  Created by Chioma Amanda Mmegwa  on 05/07/2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
