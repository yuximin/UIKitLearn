//
//  UINavigationController+Extension.swift
//  UIKitLearn
//
//  Created by whaley on 2022/4/6.
//

import Foundation
import UIKit

protocol XNavigationBarDelegate {
    var isNavigationBarHidden: Bool { get }
}

extension UINavigationController {
    func configNavigationBarForViewController(_ viewController: UIViewController) {
        if let viewController = viewController as? UIViewController & XNavigationBarDelegate {
            viewController.navigationController?.isNavigationBarHidden = viewController.isNavigationBarHidden
        }
    }
}
