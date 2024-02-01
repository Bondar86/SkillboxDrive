//
//  Extension+UIButton.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 27.09.2023.
//

import UIKit

extension UIButton {
    func startAnimatingPressAction() {
        addTarget(self, action: #selector(animateDown), for: [.touchDown, .touchDragEnter])
        addTarget(self, action: #selector(animateUp), for: [.touchDragExit,
                                                            .touchCancel,
                                                            .touchUpInside,
                                                            .touchUpOutside])
    }
    
    @objc private func animateDown(sender: UIButton) {
        animate(sender, transform: CGAffineTransform.identity.scaledBy(x: 0.95, y: 0.95))
        sender.backgroundColor = R.color.accept3()
        sender.alpha = 0.4
    }
    
    @objc private func animateUp(sender: UIButton) {
        animate(sender, transform: CGAffineTransform.identity)
        sender.backgroundColor = R.color.accept1()
        sender.alpha = 1
    }
    
    private func animate(_ button: UIButton, transform: CGAffineTransform) {
        UIView.animate(withDuration: 0.4,
                       delay: 0,
                       usingSpringWithDamping: 0.5,
                       initialSpringVelocity: 3,
                       options: [.curveEaseInOut],
                       animations: {
                        button.transform = transform
        }, completion: nil)
    }
    
}
