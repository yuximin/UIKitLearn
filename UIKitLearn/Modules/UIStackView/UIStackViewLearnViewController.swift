//
//  UIStackViewLearnViewController.swift
//  UIKitLearn
//
//  Created by whaley on 2022/2/26.
//

import UIKit

class UIStackViewLearnViewController: UIViewController {
    
    // MARK: - view
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [subview0, subview1, subview2])
        stackView.axis = .horizontal
        stackView.alignment = .bottom
        stackView.distribution = .fill
        return stackView
    }()
    
    private lazy var subview0: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        return view
    }()
    
    private lazy var subview1: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        return view
    }()
    
    private lazy var subview2: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        return view
    }()

    // MARK: - lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()

        DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [weak self] in
            self?.subview0.isHidden = true
        }
    }

    // MARK: - UI

    private func setupUI() {
        view.backgroundColor = .white

        view.addSubview(stackView)
        stackView.snp.makeConstraints { make in
//            make.top.equalToSuperview().offset(kStatusBarAndNavBarHeight + 10)
//            make.left.equalToSuperview().offset(10)
            make.center.equalToSuperview()
        }
    }

}
