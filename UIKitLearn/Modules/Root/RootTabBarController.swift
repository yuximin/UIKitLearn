//
//  RootTabBarController.swift
//  UIKitLearn
//
//  Created by whaley on 2022/4/6.
//

import UIKit

enum RootTabBarItemType {
    case home
    case other
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .other:
            return "Other"
        }
    }
    
    var image: UIImage? {
        return nil
//        switch self {
//        case .home:
//            return Asset.HomeV4.tabbarHome.image.withRenderingMode(.alwaysOriginal)
//        case .message:
//            return Asset.HomeV4.tabbarMessage.image.withRenderingMode(.alwaysOriginal)
//        }
    }

    var selectedImage: UIImage? {
        return nil
//        switch self {
//        case .home:
//            return Asset.HomeV4.tabbarHomeSelected.image.withRenderingMode(.alwaysOriginal)
//        case .message:
//            return Asset.HomeV4.tabbarMessageSelected.image.withRenderingMode(.alwaysOriginal)
//        }
    }
    
    var viewController: UIViewController {
        switch self {
        case .home:
            return BaseNavigationController(rootViewController: HomeViewController())
        case .other:
            let viewController = UIViewController()
            viewController.view.backgroundColor = .white
            return viewController
        }
    }
}

class RootTabBarController: UITabBarController {
    
    let tabBarItems: [RootTabBarItemType] = [.home, .other]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupChildViewControllers()
    }
    
    private func setupChildViewControllers() {
        var viewControllers = [UIViewController]()
        for item in tabBarItems {
            let viewController = item.viewController
            viewController.tabBarItem = UITabBarItem(title: item.title, image: item.image, selectedImage: item.selectedImage)
            viewControllers.append(viewController)
        }
        setViewControllers(viewControllers, animated: true)
    }

}
