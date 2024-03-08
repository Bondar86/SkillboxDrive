//
//  PrimaryButton.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 06/02/24.
//

import UIKit

final class PrimaryButton: UIButton {
    
    // MARK: - Public Properties
        
    override var isHighlighted: Bool {
        didSet {
            // Проверяем, что у нас изменилось состояние
            guard oldValue != isHighlighted else { return }
            // Анимируем скейл (если isHighlighted - скейл будет CGAffineTransform(scaleX: 0.97, y: 0.97), если нет, тогда identity)
            UIView.animate(withDuration: 0.3) {
                self.transform = self.isHighlighted ? CGAffineTransform(scaleX: 0.97, y: 0.97) : .identity
            }
            // Анимируем альфу
            alpha = isHighlighted ? 0.4 : 1.0 }
    }
    
    override var intrinsicContentSize: CGSize { type.size }
    
    // MARK: - Private Properties
    
    private let type: PrimaryButtonViewModel
    private let text: String
    
    // MARK: - Initializers

    init(type: PrimaryButtonViewModel, text: String) {
        self.type = type
        self.text = text
        super.init(frame: .zero)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
    
    private func setupButton() {
        setTitleColor(type.textColor, for: .normal)
        setTitle(text, for: .normal)
        layer.cornerRadius = type.size.height / 2
        backgroundColor = type.color
    }
}
