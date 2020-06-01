//
//  myCustonButton.swift
//  myButtonDesignSpike
//
//  Created by saad aleissa on 30/05/2018.
//  Copyright © 2018 Saad Aleissa. All rights reserved.
//

import UIKit
class myCustomButton : UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.white.withAlphaComponent(0.5).cgColor
        
        
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.size.height / 2

    }
    
    
}
