//
//  UIViewController+Extension.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 15/01/24.
//

import UIKit

extension UIViewController {
    
    func addChild (controller: UIViewController, rootView: UIView) {
        addChild(controller)
        rootView.addSubview(controller.view)
        controller.view.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            controller.view.topAnchor.constraint(equalTo: rootView.topAnchor),
            controller.view.leadingAnchor.constraint(equalTo: rootView.leadingAnchor),
            controller.view.trailingAnchor.constraint(equalTo: rootView.trailingAnchor),
            controller.view.bottomAnchor.constraint(equalTo: rootView.bottomAnchor)
        ])
        controller.didMove(toParent: self)
    }
    
    func showAlert(
        alertText: String,
        alertMessage: String? = nil,
        buttonTitle: String? = "ОK",
        action: (() -> Void)? = nil
    ) {
        let alert = UIAlertController(title: alertText, message: alertMessage, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: buttonTitle, style: .default) { _ in
            if let action = action { action() }
        })
        
        self.present(alert, animated: true, completion: nil)
    }
}
