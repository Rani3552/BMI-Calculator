//
//  CalculateBMIViewModel.swift
//  BMICalculator
//
//  Created by Rani Singh on 27/04/20.
//  Copyright © 2020 InnoCric. All rights reserved.
//

import UIKit

class CalculateBMIViewModel {
    
    var bmi: CalculatorModel?
    
    func getBMIValue() -> String {
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
    
    func calculateBMI(height: Float, weight: Float)  {
        let result = weight/(height * height)
        
        if result < 18.5 {
            bmi = CalculatorModel(value: result, advice: "Eat more pies", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if result < 24.9 {
            bmi = CalculatorModel(value: result, advice: "You Are Fit", color: #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1))
        }else {
            bmi = CalculatorModel(value: result, advice: "Eat less pies", color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
