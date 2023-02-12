//
//  SecondViewController.swift
//  TestProject
//
//  Created by Альбина on 12.02.2023.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {
    
    // MARK: -Outlets
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.backgroundColor = .systemRed
        button.setTitle("Press here", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 25.0
        button.layer.shadowColor = UIColor.blue.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        setupHerarchy()
        setupLayout()
    }
    
    //MARK: -Setup
    
    private func setupHerarchy() {
        view.addSubview(button)
    }
    
    private func setupLayout() {
        button.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.centerY.equalTo(view).offset(300)
            make.height.equalTo(30)
            make.right.equalTo(view).offset(-50)
            make.left.equalTo(view).offset(50)
            
        }
    }
    
    //MARK: -Actions
    
    @objc func buttonPressed() {
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeViewController(viewController: ThirdViewController(), animated: true, animationOptions: .transitionFlipFromLeft)
    }
}

