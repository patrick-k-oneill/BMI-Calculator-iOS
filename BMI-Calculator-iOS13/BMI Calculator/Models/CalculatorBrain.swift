//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Patrick O'Neill on 10/12/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//
import UIKit
import Foundation

struct CalculatorBrain  {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) -> BMI   {
        bmi = BMI(value: weight / pow(height, 2), weightCategory: "nil", backgroundColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
        
        if weight != 0 && height != 0   {
            bmi?.setBMIAdviceAndColor()
        } else {
            bmi?.weightCategory = "You are a ghost!"
            bmi?.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        }
        
        
        return bmi ?? BMI(value: 0.0, weightCategory: "nil", backgroundColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
    }
}
