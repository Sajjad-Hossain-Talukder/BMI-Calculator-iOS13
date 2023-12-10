//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Xotech on 07/12/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//


struct CalculatorBrain {
    
    var  bmi : BMI?
    
    mutating func calculateBMI(_ height: Float , _ weight : Float ){
        let bmiValue = weight / ( height  * height )
        bmi = BMI(value: bmiValue , advice: "Muti ", color: .red )
    }
    
    func getBMI()-> String {
        return  String(format : "%0.1f", bmi?.value ?? 0.0 )
    }

}
