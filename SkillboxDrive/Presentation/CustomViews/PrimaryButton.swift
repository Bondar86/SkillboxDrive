//
//  PrimaryButton.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 06/02/24.
//

import UIKit

final class PrimaryButton: UIButton {
    
    enum ButtonType {
        case small
        case normal
        
        var color: UIColor {
            switch self {
            case .small:
                R.color.accept2() ?? UIColor.systemPink
            case .normal:
                R.color.accept1() ?? UIColor.blue
            }
        }
        
        var textColor: UIColor {
            switch self {
            case .small:
                R.color.customBlack() ?? UIColor.black
            case .normal:
                R.color.customWhite() ?? UIColor.white
            }
        }
        
        var size: CGSize {
            switch self {
            case .small:
                CGSize(width: 300, height: 41)
            case .normal:
                CGSize(width: 320, height: 50)
            }
        }
    }
    
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                UIView.animate(withDuration: 0.3) {
                    self.transformIn()
                }
                alpha = 0.4
            } else {
                UIView.animate(withDuration: 0.3) {
                    self.transformOut()
                }
                alpha = 1
            }
        }
    }
    
    private let type: ButtonType
    private let text: String

    init(type: ButtonType, text: String) {
        self.type = type
        self.text = text
        super.init(frame: .zero)
        setupSize()
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupButton() {
        setTitleColor(type.textColor, for: .normal)
        setTitle(text, for: .normal)
        layer.cornerRadius = type.size.height / 2
        backgroundColor = type.color
    }
    
    private func transformIn() {
        transform = CGAffineTransform.identity.scaledBy(x: 0.97, y: 0.97)
    }
    
    private func transformOut() {
        transform = CGAffineTransform.identity
    }
    
    private func setupSize() {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: type.size.height).isActive = true
        widthAnchor.constraint(equalToConstant: type.size.width).isActive = true
    }
}
