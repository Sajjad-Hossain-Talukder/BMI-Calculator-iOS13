//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        bmiValue = String( format: "%.2f" , bmi )
        //print(bmi)
        
        //var secondVC = SecondViewController()
        //secondVC.bmiValue = String ( format:"%0.2f", bmi )
        
        //self.present(secondVC, animated: true , completion: nil)
        
        self.performSegue(withIdentifier: "goToResult", sender: self )
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            var destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue ;
        }
    }
}

