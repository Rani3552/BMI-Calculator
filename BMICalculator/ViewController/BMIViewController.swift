//
//  BMIViewController.swift
//  BMICalculator
//
//  Created by Rani Singh on 27/04/20.
//  Copyright © 2020 InnoCric. All rights reserved.
//

import UIKit

class BMIViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var calculateButton: UIButton!
    
    //MARK: - Properties
    var calculateBMIViewModel = CalculateBMIViewModel()
    
    //MARK: - ViewController Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculateButton.applyRoundCorner(radius: 5, borderWidth: 0, borderColor: nil)
        
    }
    
    //MARK: - IBActions

    @IBAction func heightSliderTapped(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
        
    }
    
    @IBAction func weightSliderTapped(_ sender: UISlider) {
        let weight = String(format: "%.2f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
       
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculateBMIViewModel.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "resultVC", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultVC" {
            let secondVC = segue.destination as! ResultViewController
                secondVC.bmiValue = calculateBMIViewModel.getBMIValue()
                secondVC.advice = calculateBMIViewModel.getAdvice()
                secondVC.color = calculateBMIViewModel.getColor()
            }
        }
    }


