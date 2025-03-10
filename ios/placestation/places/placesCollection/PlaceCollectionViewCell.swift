//
//  PlaceCollectionViewCell.swift
//  placestation
//
//  Created by vacwin on 10.03.2025.
//

import Foundation
import UIKit

class PlaceCollectionViewCell: UICollectionViewCell {
    static let identifier = "PlaceCollectionViewCell"
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private var subtitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private var imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "PlacePlaceholder")
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        self.setContsraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    //setup cell for place collection
    final func setup(_ title: String, _ subtitle: String, _ imageUrl: URL?) {
        if let imageUrl {
            
        }
        self.titleLabel.text = title
        self.subtitleLabel.text = subtitle
    }
    
    private func setContsraints() {
        //image
        self.contentView.addSubview(self.imageView)
        self.imageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        self.imageView.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        self.imageView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        self.imageView.widthAnchor.constraint(equalTo: self.contentView.widthAnchor, multiplier: 0.4).isActive = true
        //title
        self.contentView.addSubview(self.titleLabel)
        self.titleLabel.leadingAnchor.constraint(equalTo: self.imageView.trailingAnchor).isActive = true
        self.titleLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        self.titleLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
        self.titleLabel.heightAnchor.constraint(equalTo: self.contentView.heightAnchor, multiplier: 0.5).isActive = true
        //subtitle
        self.contentView.addSubview(self.subtitleLabel)
        self.subtitleLabel.leadingAnchor.constraint(equalTo: self.titleLabel.leadingAnchor).isActive = true
        self.subtitleLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        self.subtitleLabel.trailingAnchor.constraint(equalTo: self.titleLabel.trailingAnchor).isActive = true
        self.subtitleLabel.heightAnchor.constraint(equalTo: self.contentView.heightAnchor, multiplier: 0.5).isActive = true
    }
}
