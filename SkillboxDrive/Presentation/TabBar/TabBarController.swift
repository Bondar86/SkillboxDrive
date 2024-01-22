//
//  TabBarController.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 22/01/24.
//

import UIKit

final class TabBarController: UITabBarController {
    
    private let lastFilesVC = LastFilesViewController()
    private let publishedFilesVC = PublishedFilesViewController()
    private let allFilesVC = AllFilesViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarItem.standardAppearance.
        setupVC()
    }
    
    private func setupVC() {
        lastFilesVC.tabBarItem.image = UIImage(systemName: "person")
        publishedFilesVC.tabBarItem.image = UIImage(systemName: "doc")
        allFilesVC.tabBarItem.image = UIImage(systemName: "archivebox")
        
        viewControllers = [lastFilesVC, publishedFilesVC, allFilesVC]
    }
}
