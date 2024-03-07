//
//  LoginScreenView.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 15/02/24.
//

import UIKit

// MARK: - Protocol

protocol LoginScreenViewDelegate: AnyObject {
    func registerButtonTappped()
}

// MARK: - View

final class LoginScreenView: UIView {
    
    // MARK: - Private Properties
    
    private weak var delegate: LoginScreenViewDelegate?
    
    private let image: UIImageView = {
        let image = UIImageView(image: R.image.logo())
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var button: PrimaryButton = {
        let button = PrimaryButton(type: .normal, text: "Text")
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(actionButton), for: .touchUpInside)
        button.alpha = 0
        return button
    }()
    
    // MARK: - Initializers
    
    init(delegate: LoginScreenViewDelegate) {
        self.delegate = delegate
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private methods

    private func setupView() {
        backgroundColor = R.color.customWhite()
        addSubview()
        setupConstraints()
        animateButton()
    }
    
    private func addSubview() {
        addSubview(image)
        addSubview(button)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: centerXAnchor),
            image.topAnchor.constraint(equalTo: topAnchor, constant: 271.fitH),
            
            button.centerXAnchor.constraint(equalTo: image.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -92.fitH)
        ])
    }
    
    // MARK: - Public methods
    
    func animateButton() {
        UIView.animate(withDuration: 1.5) {
            self.button.alpha = 1
        }
    }
    
    @objc func actionButton() {
        delegate?.registerButtonTappped()
        print("ActionButton")
    }
}
