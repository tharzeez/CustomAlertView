//
//  ViewController.swift
//  AlertCustom
//
//  Created by Tharzeez on 10/26/17.
//  Copyright © 2017 tharzeez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapToShowAlert(_ sender: UIButton) {
        let _ = CustomAlertView(title: "Success", message: "It is working", fromViewController: self, alertType: 1)
        let alert = CustomAlertView(title: "Woaaah", message: "Woaah", fromViewController: self, alertType: 1, alertStyle: AlertStyle.okAlert)
        alert.show()
    }
    
    @IBAction func doubleButtonModalAction(_ sender: UIButton) {
    
        let alert = CustomAlertView(title: "Woaah", message: "two button opens", fromViewController: self, alertType: 2)
        alert.show()
    }
    

}

extension ViewController : AlertControllerDelegate{
    func uponPressingDecline() {
        print("returned from decline")
    }
    
    func uponPressingAccept() {
        print("returned from accept")

    }
    
    func uponPressingOkay() {
        print("returned")
    }
    

    
    
}
