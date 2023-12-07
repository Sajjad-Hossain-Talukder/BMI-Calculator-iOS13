//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Xotech on 07/12/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//


import UIKit

class SecondViewController : UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        let label = UILabel()
        label.text = bmiValue
        label.textColor = UIColor.white
        label.frame = CGRect(x: 0.0, y: 0.0, width: 200.0 , height: 50)
        view.addSubview(label)
         
    }
    
}
