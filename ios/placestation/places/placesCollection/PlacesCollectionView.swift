//
//  PlacesCollectionView.swift
//  placestation
//
//  Created by vacwin on 10.03.2025.
//

import Foundation
import UIKit

class PlacesCollectionView: UICollectionView {
    private var data = ["жопа", "срака", "собака", "рубаха", "выхухоль"]
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        let layout = UICollectionViewFlowLayout()
        super.init(frame: .zero, collectionViewLayout: layout)
        self.setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        self.dataSource = self
        self.delegate = self
        self.register(
            PlaceCollectionViewCell.self,
            forCellWithReuseIdentifier: PlaceCollectionViewCell.identifier
        )
        self.collectionViewLayout = self.createCompositionLayout()
    }
    
    private func createCompositionLayout() -> UICollectionViewLayout {
        //set item size
        let itemSize = NSCollectionLayoutSize(
            //почитать разницу размеров
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(1)
        )
        //create item
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        //set group size
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(0.25)
        )
        //create group
        let group = NSCollectionLayoutGroup.vertical(
            layoutSize: groupSize,
            subitems: [item]
        )
        //create section
        let section = NSCollectionLayoutSection(group: group)
        //create layout
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
}

extension PlacesCollectionView: UICollectionViewDelegate {
    
}

extension PlacesCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: PlaceCollectionViewCell.identifier, for: indexPath) as? PlaceCollectionViewCell else { return UICollectionViewCell()}
        cell.setup(self.data[indexPath.item], "\(indexPath.item)", nil)
        return cell
    }
}
