//
//  myShadowView .swift
//  CalculatorForMyCourse
//
//  Created by saad aleissa on 31/05/2018.
//  Copyright © 2018 Saad Aleissa. All rights reserved.
//

import UIKit
    
    class myShadowView : UIView {
        
        let MyLayer : CAGradientLayer = CAGradientLayer() // طبقة من طبقات تدرج اللون
        override func awakeFromNib() {
            super.awakeFromNib()
            self.layer.shadowColor = UIColor.black.withAlphaComponent(0.4).cgColor
            self.layer.shadowRadius = 3
            self.layer.shadowOffset = CGSize (width: -3, height: -3  )
            self.layer.shadowOpacity = 0.3
            
            
            

         
            let firstColor = UIColor.init(red: 152/255, green: 57/255, blue: 160/255, alpha: 1).cgColor
            let secondColor = UIColor.init(red: 85/255, green: 116/255, blue: 200/255, alpha: 1).cgColor
            MyLayer.startPoint = CGPoint(x: 0, y: 0.1)
            MyLayer.endPoint = CGPoint(x: 0, y: 0.7)
            MyLayer.colors = [firstColor , secondColor ]
            // .cgColor must be written because the CAGradientLayer
            MyLayer.zPosition = -1 // وضعه كأقل عنصر في الخلفية يعني اول طبقة
            self.layer.addSublayer(MyLayer)
        }
       override func layoutSubviews() {
            super.layoutSubviews()
           MyLayer.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height) // تحديد فريم الطبقة
        }
        
        
        
    }

