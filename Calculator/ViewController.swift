//
//  ViewController.swift
//  CalculatorForMyCourse
//
//  Created by saad aleissa on 30/05/2018.
//  Copyright © 2018 Saad Aleissa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
    @IBAction func SideMenuAction(_ sender: UIButton) {
        
        RadioClass.ToggleMenu()
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {return .lightContent}
    
    @IBOutlet weak var resultLabel: UILabel!
 
    let brain : brainCalculator = brainCalculator()
    
    @IBAction func buttonsAction(_ sender: UIButton) {
        // fixing zero number problem
        if resultLabel.text == "0" {   resultLabel.text = ""   }
        if sender.tag == -1 {
            if !(resultLabel.text!.contains(".")){
        resultLabel.text = resultLabel.text! + "."
            }
        }else{
        resultLabel.text = resultLabel.text! + String(sender.tag)
        }
    }
    

    
    @IBAction func operationButtonAciton(_ sender: UIButton) {
       
        brain.add(number: Double(resultLabel.text!)!, with: Character(sender.titleLabel!.text!))
        if sender.titleLabel!.text! == "="{
            resultLabel.text = brain.result()
            brain.restart()
        }   else {
            resultLabel.text = "0"
        }

    }
    
    
    
    @IBAction func ACbuttonAction(_ sender: Any) {
        resultLabel.text = "0"
        brain.restart()
    }
    

    
    @IBAction func minusPlusButtonAction(_ sender: UIButton) {
        resultLabel.text = String( Double(resultLabel.text!)! * -1 )
    }
    
    @IBAction func hundredPercent(_ sender: UIButton) {
        resultLabel.text = String( Double(resultLabel.text!)! / 100)

        
    }
    
    
}

