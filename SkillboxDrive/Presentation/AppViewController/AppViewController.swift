//
//  AppViewController.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 10/01/24.
//

import UIKit

class AppViewController: UIViewController {
    
    private let lastFilesVC = UINavigationController(rootViewController: LastFilesController())
    private let publishedFilesVC = UINavigationController(rootViewController: PublishedFilesController())
    private let allFilesVC = UINavigationController(rootViewController: AllFilesController())
    
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
    
    private func createTabBarController() -> TabBarController {
        let rootViewController = TabBarController()
        lastFilesVC.tabBarItem.image = R.image.lastFiles()
        publishedFilesVC.tabBarItem.image = R.image.profile()
        allFilesVC.tabBarItem.image = R.image.allFiles()
        rootViewController.viewControllers = [lastFilesVC, publishedFilesVC, allFilesVC]
        let a = 2
        return rootViewController
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
        let rootViewController = createTabBarController()
        addChild(controller: rootViewController, rootView: appContainerView)
    }
}
