//
//  TabBarController.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 22/01/24.
//

import UIKit

final class TabBarController: UITabBarController {
    
    private let appVC = AppViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupVC()
    }
    
    private func setupVC() {
        appVC.allFilesVC.tabBarItem.image = UIImage(systemName: "archivebox")
        appVC.lastFilesVC.tabBarItem.image = UIImage(systemName: "person")
        appVC.publishedFilesVC.tabBarItem.image = UIImage(systemName: "doc")
    
        tabBar.tintColor = R.color.accept1()
        tabBar.unselectedItemTintColor = R.color.customGray()
        
        viewControllers = [appVC.allFilesVC, appVC.lastFilesVC, appVC.publishedFilesVC]
    }
}
