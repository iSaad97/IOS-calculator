//
//  SegueMenuVC.swift
//  CalculatorForMyCourse
//
//  Created by saad aleissa on 06/06/2018.
//  Copyright © 2018 Saad Aleissa. All rights reserved.
//

import UIKit

class SegueMenuVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(SegueMenuVC.ChangeVC(notification:)), name: NSNotification.Name(rawValue: "ChangeVC"), object: nil)
        
        

    }
    @objc func ChangeVC (notification : NSNotification) {
        if let dic = notification.userInfo as? [String : AnyObject] {
            if let name = dic["ToVC"] as? String {
                performSegue(withIdentifier: name, sender: nil)
              

            }
        }
       
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        performSegue(withIdentifier: "Main", sender: nil)
        

    }
    
    
    
    
    
    
    
}
