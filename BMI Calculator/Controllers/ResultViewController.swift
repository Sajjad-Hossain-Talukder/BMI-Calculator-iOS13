//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Xotech on 07/12/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue : String?
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
    }
    
    @IBAction func recalAction(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
