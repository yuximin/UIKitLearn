//
//  ViewController.swift
//  UIKitLearn
//
//  Created by apple on 2022/1/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        let line = UIView()
        line.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: 1)
        line.center = view.center
        line.backgroundColor = .gray
        view.addSubview(line)
        
        let lab = UILabel()
        lab.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
        lab.center = view.center
        lab.text = "TEST CGFloat CGFloat CGFloat"
        lab.font = .systemFont(ofSize: 16)
        lab.isEnabled = true
        lab.numberOfLines = 1
        lab.adjustsFontSizeToFitWidth = true
        lab.baselineAdjustment = .none
        lab.minimumScaleFactor = 0
        lab.layer.borderWidth = 1.0
        lab.layer.borderColor = UIColor.gray.cgColor
        view.addSubview(lab)
    }
}

