//
//  sideMenuVC.swift
//  CalculatorForMyCourse
//
//  Created by saad aleissa on 06/06/2018.
//  Copyright © 2018 Saad Aleissa. All rights reserved.
//

import UIKit


class SideMenuVc: UIViewController {
    
    @IBAction func ButtonsAction(_ sender: UIButton) {
        var toVC = ""
        if sender.tag == 0 {
            toVC = "Main"
            // main
            
        }else if sender.tag == 1  {
            toVC = "AboutUs"
            // about us
        }else if sender.tag == 2 {
            // contact us
            toVC = "ContactUs"
        }
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "ChangeVC"), object: nil, userInfo: ["ToVC" : toVC])
            RadioClass.ToggleMenu()
        
        
        
        
    }
    
}
