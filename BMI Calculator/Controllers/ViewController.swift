//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sliderActionReadHeight(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value )+" m"
    }
    
    @IBAction func sliderActionReadWeight(_ sender: UISlider) {
        weightLabel.text = String(Int(sender.value))+" kg"
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        print( heightSlider.value ,weightSlider.value )
        
        var bmi = weightSlider.value / ( heightSlider.value * heightSlider.value )
        
        print(bmi)
        
        
    }
}

