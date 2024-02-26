//
//  LoginScreenController.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 15/02/24.
//

import UIKit

class LoginScreenController: UIViewController {
    
    // MARK: - Private Properties
    
    private lazy var image: UIImageView = {
        let image = UIImageView(image: R.image.logo())
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var button = PrimaryButton(type: .normal, text: "Войти")
    
    // MARK: - Initializer
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
    }
    
    // MARK: - Private methods
    
    private func setupView() {
        view.backgroundColor = R.color.customWhite()
        view.addSubview(image)
        view.addSubview(button)
        setupButton()
    }
    
    private func setupButton() {
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(action), for: .touchUpInside)
        button.alpha = 0
        UIView.animate(withDuration: 1.5) {
            self.button.alpha = 1
        }
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.topAnchor.constraint(equalTo: view.topAnchor, constant: 271.fitH),
            
            button.centerXAnchor.constraint(equalTo: image.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -92.fitH)
        ])
    }
    
    @objc private func action() {
        print("Text")
    }
}
