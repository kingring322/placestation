//
//  PlacesViewController.swift
//  placestation
//
//  Created by vacwin on 10.03.2025.
//

import Foundation
import UIKit

class PlacesViewController: UIViewController {
    private var placesCollection = PlacesCollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        self.view.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
    }
    
    private func setup() {
        self.setConstraints()
    }
    
    private func setConstraints() {
        let safeArea = self.view.safeAreaLayoutGuide
        
        self.placesCollection = PlacesCollectionView()
        self.view.addSubview(self.placesCollection)
        self.placesCollection.translatesAutoresizingMaskIntoConstraints = false
        self.placesCollection.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        self.placesCollection.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor).isActive = true
        self.placesCollection.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).isActive = true
        self.placesCollection.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor).isActive = true
    }
}
