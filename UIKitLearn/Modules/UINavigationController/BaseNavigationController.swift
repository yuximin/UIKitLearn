//
//  BaseNavigationController.swift
//  UIKitLearn
//
//  Created by whaley on 2022/4/6.
//

import UIKit

class BaseNavigationController: UINavigationController {
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
    }
    
    override init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?) {
        super.init(navigationBarClass: navigationBarClass, toolbarClass: toolbarClass)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        delegate = self
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        /// 处理 pushViewController 时底部栏隐藏问题
        /// 1. push 第一个 viewController 时，底部栏默认展示，不做处理
        /// 2. push 第二个 viewController 时，设置其 hidesBottomBarWhenPushed 为 true，再执行 pushViewController 操作会隐藏底部栏。
        /// 3. 因为第二个 viewController 设置了 hidesBottomBarWhenPushed 为 true。之后再 push 进来的 viewController 默认都会隐藏底部栏，所以不用再对其进行设置。
        /// 注意：这里要先设置 hidesBottomBarWhenPushed 值，再执行 push 操作。否则，会有问题
        if viewControllers.count == 1 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    override func setViewControllers(_ viewControllers: [UIViewController], animated: Bool) {
        /// 处理 setViewControllers 时底部栏隐藏问题
        /// 1. 使用 setViewControllers 设置 NavigationController 的 viewControllers 前，先处理好 hidesBottomBarWhenPushed 的值。
        /// 2. 同 pushViewController，只需要对第二个 viewController 的 hidesBottomBarWhenPushed 值进行处理即可。
        /// 3. 同样需要注意，先设置 hidesBottomBarWhenPushed 值，再执行 setViewControllers 操作。
        if viewControllers.count >= 2 {
            viewControllers[1].hidesBottomBarWhenPushed = true
        }
        super.setViewControllers(viewControllers, animated: animated)
    }
}

extension BaseNavigationController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        configNavigationBarForViewController(viewController)
    }

    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
    }
}
