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
    
    // MARK: - Initializer
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loginScreenView.animateButton()
        loadView()
    }
    
    // MARK: - Public method
    
    override func loadView() {
        view = loginScreenView
    }
}

// MARK: - Extension

extension LoginScreenController: LoginScreenViewDelegate {
    
    // MARK: - Public methods
    
    func registerButtonTappped() {
        print("Controller")
    }
}
