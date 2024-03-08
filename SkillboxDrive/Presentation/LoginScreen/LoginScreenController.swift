//
//  LoginScreenController.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 15/02/24.
//

import UIKit

final class LoginScreenController: UIViewController {
    
    // MARK: - Private propertie
    
    private lazy var loginScreenView = LoginScreenView(delegate: self)
    
    // MARK: - LifeCycle
    
    override func loadView() {
        view = loginScreenView
    }
    
    // MARK: - Initializer
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loginScreenView.animateButton()
    }
}

// MARK: - LoginScreenViewDelegate

extension LoginScreenController: LoginScreenViewDelegate {
    
    func registerButtonTappped() {}
}
