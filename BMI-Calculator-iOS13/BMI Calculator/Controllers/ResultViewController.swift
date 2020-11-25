//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Patrick O'Neill on 10/12/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var result_background: UIImageView!
    
    // Initialize BMI struct to receive BMI data from CalculateView
    var bmi = BMI()
    
    override func viewDidLoad() {
        
        // Display BMI value and its corresponding weightCategory and backgroundColor
        bmiLabel.text = String(format: "%.1f", bmi.value!)
        adviceLabel.text = bmi.weightCategory
        result_background.backgroundColor = bmi.backgroundColor
    }
    
    // User presses "Recalculate" -> Dismiss ResultView
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
