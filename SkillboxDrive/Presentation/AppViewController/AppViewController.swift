//
//  AppViewController.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 10/01/24.
//

import UIKit

class AppViewController: UIViewController {
    
    private let lastFilesController = UINavigationController(rootViewController: LastFilesController())
    private let publishedFilesController = UINavigationController(rootViewController: PublishedFilesController())
    private let allFilesController = UINavigationController(rootViewController: AllFilesController())
    
    private let loginScreenController = UINavigationController(rootViewController: LoginScreenController())
    
    private let appContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
        showMainApp()
    }
    
    private func setupView() {
        view.addSubview(appContainerView)
    }
    
    private func createTabBarController() -> TabBarController {
        let rootViewController = TabBarController()
        lastFilesController.tabBarItem.image = R.image.lastFiles()
        publishedFilesController.tabBarItem.image = R.image.profile()
        allFilesController.tabBarItem.image = R.image.allFiles()
        rootViewController.viewControllers = [lastFilesController, publishedFilesController, allFilesController]
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
//        let rootViewController = createTabBarController()
        let rootViewController = loginScreenController
        addChild(controller: rootViewController, rootView: appContainerView)
    }
}
