//
//  Fonts.swift
//  SkillboxDrive
//
//  Created by Иван Бондаренко on 26.09.2023.
//

import UIKit

enum Fonts {
    
    static var header1: UIFont? {
        UIFont.graphikFont(ofSize: 26, weight: .bold)
    }
    
    static var header2: UIFont? {
        UIFont.graphikFont(ofSize: 17, weight: .medium)
    }
    
    static var Mainbody: UIFont? {
        UIFont.graphikFont(ofSize: 16, weight: .regular)
    }
    
    static var small: UIFont? {
        UIFont.graphikFont(ofSize: 15, weight: .regular)
    }
    
    static var button: UIFont? {
        UIFont.graphikFont(ofSize: 13, weight: .regular)
    }
}
