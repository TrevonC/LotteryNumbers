//
//  ViewController.swift
//  LotteryNumbers
//
//  Created by Trevon Costa on 2022-02-16.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numOne: UILabel!
    @IBOutlet weak var numTwo: UILabel!
    @IBOutlet weak var numThree: UILabel!
    @IBOutlet weak var numFour: UILabel!
    @IBOutlet weak var numFive: UILabel!
    @IBOutlet weak var numSix: UILabel!
    @IBOutlet weak var numSeven: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        header()
        number()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var headerView: UIView!
    
    // numbersView Styling/Shadow
    @IBOutlet weak var numbersView: UIView!
    func header(){
        numbersView.layer.shadowOpacity = 0.5
        numbersView.layer.shadowOffset = CGSize(width: 5, height: 5)
        numbersView.layer.shadowRadius = 10.0
        numbersView.layer.shadowColor = UIColor.darkGray.cgColor
    }
    
    // Rounding Each Label
    func number(){
        // Currently unaware on how to shorten this to clean it up. I'll put it on the backlog for now.
        numOne.layer.masksToBounds = true
        numOne.layer.cornerRadius = 12
        numTwo.layer.masksToBounds = true
        numTwo.layer.cornerRadius = 12
        numThree.layer.masksToBounds = true
        numThree.layer.cornerRadius = 12
        numFour.layer.masksToBounds = true
        numFour.layer.cornerRadius = 12
        numFive.layer.masksToBounds = true
        numFive.layer.cornerRadius = 12
        numSix.layer.masksToBounds = true
        numSix.layer.cornerRadius = 12
        numSeven.layer.masksToBounds = true
        numSeven.layer.cornerRadius = 12
    }
}
