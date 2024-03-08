//
//  PrimaryButtonViewModel.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 14/02/24.
//

import UIKit

enum PrimaryButtonViewModel {
    
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
    
    var textColor: UIColor? {
        switch self {
        case .small:
            R.color.customBlack()
        case .normal:
            R.color.customWhite()
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
