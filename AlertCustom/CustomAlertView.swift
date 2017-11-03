//
//  CustomAlertView.swift
//  AlertCustom
//
//  Created by Tharzeez on 10/26/17.
//  Copyright © 2017 tharzeez. All rights reserved.
//

import UIKit

protocol AlertControllerDelegate {
    func uponPressingOkay()
    func uponPressingDecline()
    func uponPressingAccept()
}

class CustomAlertView: UIView , Modal {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var okayButton: UIButton!
    @IBOutlet weak var twoButtonHolderView: UIView!
    
    @IBOutlet weak var declineButton: UIButton!
    
    @IBOutlet weak var acceptButton: UIButton!
    var backgroundView: UIView = UIView()
    var delegate : AlertControllerDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit(){
        Bundle.main.loadNibNamed("CustomAlertView", owner: self, options: nil)
        addSubview(contentView)
        self.twoButtonHolderView.isHidden = true
        self.okayButton.isHidden = true
    }
    
    convenience init(title: String, message: String,fromViewController controller: UIViewController, alertType : Int) {
        self.init(frame: CGRect(x: 25.0, y: (UIScreen.main.bounds.height/2)-225, width: UIScreen.main.bounds.width-50, height: 225.0))
        if alertType == 1 {
            self.okayButton.isHidden = false
        }else{
            self.twoButtonHolderView.isHidden = false
        }
        backgroundView.frame = UIScreen.main.bounds
        self.titleLabel.text = title
        self.messageLabel.text = message
        delegate = controller as? AlertControllerDelegate
        self.okayButton.addTarget(self, action: #selector(okayAction) , for: .touchUpInside)
    
        self.declineButton.addTarget(self, action: #selector(declineButtonAction(_:)), for: .touchUpInside)
        
        self.acceptButton.addTarget(self, action: #selector(acceptButtonAction(_:)), for: .touchUpInside)
        }
    
    @objc func okayAction(){
        self.dismiss()
        delegate?.uponPressingOkay()
    }
    
    @IBAction func declineButtonAction(_ sender: UIButton) {
    self.dismiss()
        delegate?.uponPressingDecline()
    }
    
    @IBAction func acceptButtonAction(_ sender: UIButton) {
        self.dismiss()
        delegate?.uponPressingAccept()
    }
    
    
    }

