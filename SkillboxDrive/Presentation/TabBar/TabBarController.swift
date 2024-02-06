//
//  TabBarController.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 22/01/24.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    private func setupTabBar() {
        tabBar.tintColor = R.color.accept1()
        tabBar.unselectedItemTintColor = R.color.customGray()
    }
}
