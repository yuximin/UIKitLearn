//
//  AppDelegate.swift
//  UIKitLearn
//
//  Created by apple on 2022/1/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = RootTabBarController() // BaseNavigationController(rootViewController: HomeViewController())
        window?.makeKeyAndVisible()
        return true
    }

}

