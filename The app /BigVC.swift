//
//  BigVC.swift
//  CalculatorForMyCourse
//
//  Created by saad aleissa on 06/06/2018.
//  Copyright © 2018 Saad Aleissa. All rights reserved.
//

import UIKit

class bigVC : UIViewController {
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(bigVC.HideMenu), name: NSNotification.Name(rawValue: "HideMenu"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(bigVC.ShowMenu), name: NSNotification.Name(rawValue: "ShowMenu"), object: nil)

    }
    @IBOutlet weak var SideMenuLayout: NSLayoutConstraint!
    
    @objc func HideMenu(){
        
        SideMenuLayout.constant = 0
        UIView.animate(withDuration: 0.35) {
            self.view.layoutIfNeeded()
        }
        
    }
    @objc func ShowMenu(){
        
        SideMenuLayout.constant = self.view.frame.size.width * 0.7
        UIView.animate(withDuration: 0.35) {
            self.view.layoutIfNeeded()
        }
    }
    
}
