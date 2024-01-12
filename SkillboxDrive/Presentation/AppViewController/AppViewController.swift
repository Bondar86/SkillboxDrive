//
//  AppViewController.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 10/01/24.
//

import RswiftResources
import UIKit

class AppViewController: UIViewController {
    
    private lazy var imageView: UIImageView = {
        let image = UIImageView(image: R.image.imageThree())
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red

        view.addSubview(imageView)
        setupConstraints()
        
    }
    
    func setupConstraints() {
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
}
