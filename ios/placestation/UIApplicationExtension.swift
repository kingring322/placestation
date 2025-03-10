//
//  UIApplicationExtension.swift
//  placestation
//
//  Created by vacwin on 10.03.2025.
//

import Foundation
import UIKit

extension UIApplication {
    func topViewController(
        base: UIViewController? = UIApplication.shared.connectedScenes
            .compactMap {
                ($0 as? UIWindowScene)?.keyWindow
            }
            .first?.rootViewController
    ) -> UIViewController? {
            
        if let nav = base as? UINavigationController {
            return topViewController(
                base: nav.visibleViewController
            )
        } else if let tab = base as? UITabBarController,
                  let selected = tab.selectedViewController {
            return topViewController(
                base: selected
            )
        } else if let presented = base?.presentedViewController {
            return topViewController(
                base: presented
            )
        }
        return base
    }
    
    func topNavigationController() -> UINavigationController? {
        return topViewController()?.navigationController
    }
}
