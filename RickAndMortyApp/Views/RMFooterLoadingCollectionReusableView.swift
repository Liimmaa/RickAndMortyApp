//
//  RMFooterLoadingCollectionReusableView.swift
//  RickAndMortyApp
//
//  Created by Chioma Amanda Mmegwa  on 13/07/2023.
//

import UIKit

final class RMFooterLoadingCollectionReusableView: UICollectionReusableView {
     static let identifier = "RMFooterLoadingCollectionReusableView"
    
    
    private let spinner: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.hidesWhenStopped = true
        spinner.translatesAutoresizingMaskIntoConstraints = false
        return spinner
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        addSubview(spinner)
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }

    private func addConstraints() {
        spinner.heightAnchor.constraint(equalToConstant: 100).isActive = true
        spinner.widthAnchor.constraint(equalToConstant: 100).isActive = true
        spinner.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        spinner.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    public func startAnimating() {
        spinner.startAnimating()
    }
}
