//
//  TabBarViewController.swift
//  placestation
//
//  Created by vacwin on 10.03.2025.
//

import Foundation
import UIKit

class TabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabBar()
    }
    //MARK: setup tab bar
    private func setupTabBar() {
        let items: [TabBarItem] = [
            .places,
            .profile
        ]
        self.viewControllers = items.map {
            switch $0 {
            case .places:
                let placesViewController = PlacesViewController()
                return UINavigationController(rootViewController: placesViewController)
            case .profile:
                let profileViewController = ProfileViewController()
                return UINavigationController(rootViewController: profileViewController)
            }
        }
        self.viewControllers?.enumerated().forEach {
            $1.tabBarItem.title = items[$0].title
            $1.tabBarItem.image = UIImage(systemName: items[$0].iconName)
        }
    }
}
