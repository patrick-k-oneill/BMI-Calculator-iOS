//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        
        // Set sliders to average London female height/weight
        heightSlider.value = 1.62
        weightSlider.value = 70
    }
    
    
    // User changes heightSlider -> Update label text
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        heightLabel.text = String(format: "%.2fm", sender.value)
    }
    
    // User changes weightSlider -> Update label text
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        weightLabel.text = String(format: "%.0fKg", sender.value)
    }
    
    
    
    // User presses "Calculate" -> segue to view displaying BMI results
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            
            // Initialize BMI struct, calculate bmi data based on user's height & weight
            var bmi = BMI()
            bmi.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
            
            // Pass BMI data for ResultView to display
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = bmi
        }
        
    }
    
}

