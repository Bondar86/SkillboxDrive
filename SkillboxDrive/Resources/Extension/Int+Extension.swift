//
//  Int+Extension.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 15/01/24.
//

import UIKit

extension Int {
    
    private var iPhoneXSize: (width: CGFloat, height: CGFloat) { (375, 812) }
    private var screenSize: CGSize { UIScreen.main.bounds.size }
    
    /// Подогнать под ширину экрана iPhoneX.
    var fitW: CGFloat {
        let ratio = screenSize.width / iPhoneXSize.width
        return CGFloat(self) * ratio
    }
    
    /// Подогнать под высоту экрана iPhoneX.
    var fitH: CGFloat {
        let ratio = screenSize.height / iPhoneXSize.height
        return CGFloat(self) * ratio
    }
}
