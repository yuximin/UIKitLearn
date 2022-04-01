//
//  UILabelLearnViewController.swift
//  UIKitLearn
//
//  Created by whaley on 2022/2/23.
//

import UIKit

class UILabelLearnViewController: UIViewController {
    
    // MARK: - view
    
    private lazy var 普通的Label: UILabel = {
        var lab = UILabel()
        lab.text = "普通的UILabel"
        lab.textColor = .black
        lab.textAlignment = .left
        lab.font = .systemFont(ofSize: 12)
        return lab
    }()
    
    // MARK: - lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("statusBarHeight: \(kStatusBarHeight)")
        print("navigationBarHeight: \(kNavBarHeight)")
        print("screenSize: \(kScreenSize)")
        print("screenWidth: \(kScreenWidth)")
        print("screenHeight: \(kScreenHeight)")
        
        setupNavigationBar()
        setupUI()
    }
    
    // MARK: - UI
    
    private func setupNavigationBar() {
        navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.isTranslucent = true
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        
        setupSubviews()
        setupConstraints()
    }
    
    private func setupSubviews() {
        
        let subview = UIView()
        subview.backgroundColor = .red
        view.addSubview(subview)
        subview.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(kStatusBarAndNavBarHeight)
            make.centerX.equalToSuperview()
            make.width.equalTo(self.view.bounds.width)
            make.height.equalTo(44)
        }
        
        view.addSubview(普通的Label)
    }
    
    private func setupConstraints() {
        普通的Label.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(kStatusBarAndNavBarHeight)
        }
    }

}
