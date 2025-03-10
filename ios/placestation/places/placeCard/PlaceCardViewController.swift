//
//  PlaceCardViewController.swift
//  placestation
//
//  Created by vacwin on 10.03.2025.
//

import Foundation
import UIKit

class PlaceCardViewController: UIViewController {
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "PlacePlaceholder")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    private let titleLabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.text = "ТЕСТОВЫЙ ТАЙТЛ"
        label.numberOfLines = 1
        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let locationLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        label.text = "Улица Пушкина, дом Колотушкина"
        label.numberOfLines = 0
        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let descriptionTextView: UITextField = {
        let txtField = UITextField()
        txtField.textAlignment = .right
        txtField.placeholder = "Можно писать заметки о месте вот тут"
        txtField.translatesAutoresizingMaskIntoConstraints = false
        return txtField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        self.setup()
    }
    
    private func setup() {
        self.setConstraints()
    }
    
    private func setConstraints() {
        let safeArea = self.view.safeAreaLayoutGuide
        //image view
        self.view.addSubview(self.imageView)
        self.imageView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor).isActive = true
        self.imageView.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        self.imageView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).isActive = true
        self.imageView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.3).isActive = true
        //title
        self.view.addSubview(self.titleLabel)
        self.titleLabel.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16).isActive = true
        self.titleLabel.topAnchor.constraint(equalTo: self.imageView.bottomAnchor, constant: 16).isActive = true
        self.titleLabel.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -16).isActive = true
        self.titleLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //location
        self.view.addSubview(self.locationLabel)
        self.locationLabel.leadingAnchor.constraint(equalTo: self.titleLabel.leadingAnchor).isActive = true
        self.locationLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 16).isActive = true
        self.locationLabel.trailingAnchor.constraint(equalTo: self.titleLabel.trailingAnchor).isActive = true
        self.locationLabel.heightAnchor.constraint(equalToConstant: 35).isActive = true
//        //description
//        self.view.addSubview(self.descriptionTextView)
//        self.descriptionTextView.leadingAnchor.constraint(equalTo: self.titleLabel.leadingAnchor).isActive = true
//        self.descriptionTextView.topAnchor.constraint(equalTo: self.locationLabel.bottomAnchor, constant: 16).isActive = true
//        self.descriptionTextView.trailingAnchor.constraint(equalTo: self.titleLabel.trailingAnchor).isActive = true
//        self.descriptionTextView.heightAnchor.constraint(equalToConstant: 250).isActive = true
    }
}
