//
//  UIFont+Extension.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 15/01/24.
//

import UIKit

extension UIFont {
    
    enum FontWeight {
        case regular
        case medium
        case bold
    }
    
    static func graphikFont(ofSize fontSize: CGFloat,
                            weight: FontWeight = .regular) -> UIFont {
        switch weight {
            
        case (.regular):
            R.font.graphikRegular(size: fontSize) ?? .systemFont(ofSize: fontSize, weight: .regular)
        case .medium:
            R.font.graphikMedium(size: fontSize) ?? .systemFont(ofSize: fontSize, weight: .medium)
        case .bold:
            R.font.graphikBold(size: fontSize) ?? .systemFont(ofSize: fontSize, weight: .bold)
        }
    }
}
