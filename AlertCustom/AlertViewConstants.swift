//
//  AlertViewConstants.swift
//  AlertCustom
//
//  Created by Tharzeez on 11/3/17.
//  Copyright © 2017 tharzeez. All rights reserved.
//

import Foundation
import UIKit

public enum AlertKey: String {
    case titleFontName = "titleFontName"
    case messageFontName = "msgFontName"
    case titleColor = "tColor"
    case okButtonBgColor = "okButtonBgColor"
    case okButtonTextColor = "okTextCol"
    case viewBgColor = "viewBgColor"
}

public struct AlertStyle {
    
    static let okAlert : Dictionary<String, Any> = [
        AlertKey.titleFontName.rawValue: UIFont(name : "Helvetica",size : 24.0)!,
        AlertKey.messageFontName.rawValue: UIFont(name: "Helvetica", size: 20.0)!,
        AlertKey.titleColor.rawValue: UIColor.black,
        AlertKey.okButtonBgColor.rawValue : UIColor.yellow,
        AlertKey.okButtonTextColor.rawValue : UIColor.black,
        AlertKey.viewBgColor.rawValue : UIColor.white
    ]
    
    static let cancelAlert : Dictionary<String, Any> = [:]
    
    
}

