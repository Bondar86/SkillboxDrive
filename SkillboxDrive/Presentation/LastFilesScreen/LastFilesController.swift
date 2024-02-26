//
//  LastFilesController.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 25/01/24.
//

import UIKit

class LastFilesController: UIViewController {
    
    var button = PrimaryButton(type: .small, text: "some")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = R.color.customWhite()
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
