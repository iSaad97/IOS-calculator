//
//  MysideShadow.swift
//  CalculatorForMyCourse
//
//  Created by saad aleissa on 06/06/2018.
//  Copyright © 2018 Saad Aleissa. All rights reserved.
//

import UIKit

class mySideShadow : UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.shadowColor = UIColor.black.withAlphaComponent(0.4).cgColor
        self.layer.shadowRadius = 3
        self.layer.shadowOffset = CGSize (width: 4, height: -3  )
        self.layer.shadowOpacity = 0.3
        
        
        
        
        
    }

    
    
    
}
