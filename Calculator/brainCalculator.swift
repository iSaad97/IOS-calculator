//
//  brainCalculator.swift
//  CalculatorForMyCourse
//
//  Created by saad aleissa on 31/05/2018.
//  Copyright © 2018 Saad Aleissa. All rights reserved.
//

import Foundation

class brainCalculator {
    
    func restart() {
        numWithOpArr = []
        
    }
    func add ( number : Double , with operation : Character) {
        numWithOpArr.append(calcElement(num : number , op : operation))
        
    }
    
    func result() -> String {
        calculateMultiplyAndDevidesBy()
        calcAllMinus()
        return String( numWithOpArr.reduce(0, { $0 + $1.num }) )
    }
    
    typealias calcElement = (num : Double , op :  Character)
    private var numWithOpArr : [calcElement] = []
    
    
    func calculateMultiplyAndDevidesBy () {
        
        for (index , current) in numWithOpArr.enumerated() {
            if current.op == "x" || current.op == "/" {
                let afterCurrent = numWithOpArr[ index + 1 ]
                var newCalc : calcElement!
                if current.op == "x" {
                    newCalc = calcElement(num : current.num * afterCurrent.num , op : afterCurrent.op)
                    
                } else if current.op == "/" {
                    newCalc = calcElement(num : current.num / afterCurrent.num , op : afterCurrent.op)
                    
                }
                numWithOpArr.remove(at: index) // remove index will remove the index so the next element will be the next index
                numWithOpArr.remove(at: index)
                numWithOpArr.insert(newCalc, at: index)// insert add in a specific point , not a new one
                calculateMultiplyAndDevidesBy() // recursive func if there were not / or * will not be activited
                break /* after deleting the last two index the for loop wil not know who's got deleted ex: if there were 5 element and we delete two element in an op the for loop will still think that there is 5 element
                   *break* will stop him after deleting
                 */

            }
            
        }
        
    }

    func calcAllMinus() {
        for (index , current) in numWithOpArr.enumerated() {
            if current.op == "-" {
                let afterCurrent = numWithOpArr[ index + 1 ]
                let newCalc : calcElement = calcElement(num : current.num -  afterCurrent.num,op:"+")
                
                numWithOpArr.remove(at: index)
                numWithOpArr.remove(at: index)
                numWithOpArr.insert(newCalc, at: index)
                calcAllMinus()
                break
            
                
            }
            
        }
        
    }
}
    
    
    
    
    
    
    

