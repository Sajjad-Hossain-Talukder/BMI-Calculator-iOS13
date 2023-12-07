//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Xotech on 07/12/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//


struct CalculatorBrain {
    
    var height : Float = 0.0
    var weight : Float = 0.0
    
    mutating func calculateBMI(_ height: Float , _ weight : Float ){
        self.height = height
        self.weight = weight
    }
    
    
    func getBMI()-> String {
        var bmi = weight / ( height  * height )
        return  String( format: "%.2f" , bmi )
    }
    
    
    
}
