//
//  FirstPageViewController.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 12/01/24.
//

import UIKit

final class FirstPageViewController: UIViewController {
 
    private lazy var imageView: UIImageView = {
        let image = UIImageView(image: R.image.image())
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var label: UILabel = {
       let label = UILabel()
        label.numberOfLines = 0
        label.font = Fonts.small
        label.text = Strings.onboardingScreenTitleForLabel
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
    }
    
    private func setupView() {
        view.backgroundColor = R.color.customWhite()
        view.addSubview(imageView)
        view.addSubview(label)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 228.fitW),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 149.fitW),
            imageView.heightAnchor.constraint(equalToConstant: 147.fitH),
            
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 64),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
