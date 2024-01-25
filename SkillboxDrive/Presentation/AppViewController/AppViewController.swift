//
//  AppViewController.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 10/01/24.
//

import UIKit

class AppViewController: UIViewController {
    
    private let appContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupView()
        setupConstraints()
        showMainApp()
    }
    
    private func setupView() {
        view.addSubview(appContainerView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            appContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            appContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            appContainerView.topAnchor.constraint(equalTo: view.topAnchor),
            appContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private func showMainApp() {
        let rootViewController = TabBarController()
        addChild(controller: rootViewController, rootView: appContainerView)
    }
}
