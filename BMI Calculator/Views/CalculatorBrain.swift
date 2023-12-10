//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Xotech on 07/12/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var  bmi : BMI? = nil
    
    mutating func calculateBMI(_ height: Float , _ weight : Float ){
        let bmiValue = weight / ( height  * height )
        let advice : String
        let color : UIColor
        
        if bmiValue < 18.5 {
            advice = "Eat more Pies!!"
            color =  UIColor.blue
        } else if bmiValue > 24.9 {
            advice  = "Eat less Pies!!"
            color = UIColor.red
        } else {
            advice = "Fit as a Fiddle!"
            color = UIColor.green
        }
        
        print(advice,bmiValue)
        
        bmi = BMI(value: bmiValue , advice: advice , color: color )
    }
    
    func getBMI()-> String {
        print(bmi?.value ?? 0.0 )
        return  String ( format : "%0.1f", bmi?.value ?? 0.0 )
    }
    
    func getColor()->UIColor{
        return bmi?.color ?? .white
    }
    
    func getAdvice()->String{
        return bmi?.advice ?? "Re-calculate Again"
    }

}
