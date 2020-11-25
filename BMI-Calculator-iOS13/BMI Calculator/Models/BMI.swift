//
//  BMI.swift
//  BMI Calculator
//
//  Created by Patrick O'Neill on 10/28/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//
import UIKit

// Contains properties and methods for calculating and categorizing user's BMI
struct BMI  {
    
    var value: Float?
    var weightCategory: String?
    var backgroundColor: UIColor?
    
    // Calculate BMI based on user's height & weight, assign corresponding weightCategory and backgroundColor
    mutating func calculateBMI(height: Float, weight: Float)    {
        
        value = weight / pow(height, 2)
        setBMICategoryAndColor()
    }
    
    // Determines and sets weightCategory and backgroundColor based on calculated BMI value
    mutating func setBMICategoryAndColor()    {
        if value != nil {
            switch value!  {
            case 0..<18.5:
                weightCategory = "Underweight"
                backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
            case 18.5...24.9:
                weightCategory = "Normal"
                backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
            case _ where value! > 24.9:
                weightCategory = "Overweight"
                backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
            default:
                weightCategory = "nil"
                backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            }
        }
    }
}
