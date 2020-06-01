//
//  RadioClass.swift
//  CalculatorForMyCourse
//
//  Created by saad aleissa on 06/06/2018.
//  Copyright © 2018 Saad Aleissa. All rights reserved.
//

import Foundation

class RadioClass {
    
    static var isMenu = false
    
    static func ToggleMenu(){
        if isMenu {
            NotificationCenter.default.post(name : NSNotification.Name(rawValue: "HideMenu"), object: nil)
            isMenu = false
            
        }else{
            NotificationCenter.default.post(name : NSNotification.Name(rawValue: "ShowMenu"), object: nil)
            isMenu = true
            
            
        }
        
    }
}
