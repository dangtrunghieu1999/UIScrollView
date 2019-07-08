//
//  ViewController.swift
//  UIScrollView
//
//  Created by admin on 7/7/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit
import SnapKit

class SimpleRootViewController: UIViewController {
    
    // MARK: - Properties
    
    lazy var contentViewSize = CGSize(width: self.view.frame.width, height: self.view.frame.height + 400)
    
    // MARK: - UIElements
    
    lazy var scrollView: UIScrollView = {
        let view = UIScrollView(frame: .zero)
        view.backgroundColor = .white
        view.frame = self.view.bounds
        view.contentSize = contentViewSize
        view.autoresizingMask = .flexibleHeight
        view.showsHorizontalScrollIndicator = true
        return view
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.frame.size = contentViewSize
        return view
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Center of container view"
        return label
    }()
    
    
    // MARK: - ViewLifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(scrollView)
        scrollView.addSubview(containerView)
        layoutLabel()
    }
    
    //MARK: - Layout
    
    func layoutLabel() {
        containerView.addSubview(label)
        label.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
        }
    }
    
}

