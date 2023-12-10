//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Xotech on 07/12/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//


struct CalculatorBrain {
    
    var  bmi : Float?

    mutating func calculateBMI(_ height: Float , _ weight : Float ){
        bmi = weight / ( height  * height )
    }
    
    func getBMI()-> String {
        return  String(format : "%0.1f", bmi ?? 0.0 )
    }
    
    
    
}
