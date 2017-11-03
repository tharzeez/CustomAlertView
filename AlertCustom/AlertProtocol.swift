//
//  AlertProtocol.swift
//  AlertCustom
//
//  Created by Tharzeez on 10/26/17.
//  Copyright © 2017 tharzeez. All rights reserved.
//

import Foundation
import UIKit

protocol Modal {
    func show()
    func dismiss()
    var backgroundView:UIView {get}
}

extension Modal where Self: UIView {
    
    func show(){
        self.backgroundView.backgroundColor = UIColor(red: 0.02, green: 0.16, blue: 0.31, alpha: 0.5)
        UIApplication.shared.delegate?.window??.rootViewController?.view.addSubview(backgroundView)
        UIApplication.shared.delegate?.window??.rootViewController?.view.addSubview(self)
    }
    
    func dismiss(){
        self.backgroundView.removeFromSuperview()
        self.removeFromSuperview()
    }
}

