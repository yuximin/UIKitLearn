//
//  HomeViewModel.swift
//  UIKitLearn
//
//  Created by whaley on 2022/2/23.
//

import UIKit

enum HomeListItem: CaseIterable {
    case uilabel
    case uistackview
    
    var title: String {
        switch self {
        case .uilabel:
            return "UILabel"
        case .uistackview:
            return "UIStackView"
        }
    }
    
    var viewController: UIViewController {
        switch self {
        case .uilabel:
            return UILabelLearnViewController()
        case .uistackview:
            return UIStackViewLearnViewController()
        }
    }
}

class HomeViewModel: NSObject {
    
    let dataList = HomeListItem.allCases

}
