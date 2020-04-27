//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Rani Singh on 27/04/20.
//  Copyright © 2020 InnoCric. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var recalculateButton: UIButton!
    
    //MARK: - Properties
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    

    //MARK: - ViewController Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
        recalculateButton.applyRoundCorner(radius: 5, borderWidth: 0, borderColor: nil)
    }
    
    //MARK: - IBActions
    
    @IBAction func recalculateButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
