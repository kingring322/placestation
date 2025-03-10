//
//  TabBarItem.swift
//  placestation
//
//  Created by vacwin on 10.03.2025.
//

import Foundation

enum TabBarItem: Int {
    case places
    case profile
    //title for case
    var title: String {
        switch self {
        case .places:
            return "places"
        case .profile:
            return "profile"
        }
    }
    //tab bar image for case
    var iconName: String {
        switch self {
        case .places:
            return "map"
        case .profile:
            return "person.circle"
        }
    }
}
