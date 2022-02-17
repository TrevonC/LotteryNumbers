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
        clean()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var headerView: UIView!
    
    
    // numbersView Styling/Shadow.
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
    
    // Clear all numbers generated "" Blank to display empty.
    func clean(){
        numOne.text = ""
        numTwo.text = ""
        numThree.text = ""
        numFour.text = ""
        numFive.text = ""
        numSix.text = ""
        numSeven.text = ""
    }
    // Function added to viewDidLoad to start empty.
    @IBAction func clearAll(_ sender: Any) {
        clean()
    }
    
    // Generating the draw
    func randomInt(max: Int) -> Int{
        let rand:Int = Int(arc4random())
        return (rand % max) + 1
    }
    func randomNum() -> Int {
        let max: Int = 50
        let random = randomInt(max: max)
        return random
    }
    
    
    @IBAction func generate(_ sender: Any) {
        var lottoNum = [0,0,0,0,0,0,0]
        
        // Populating array index with random numbers
        for i in 0...6 {
            lottoNum[i] = randomNum()
         }
        
        // Displaying the generated numbers
        numOne.text = String(lottoNum[0])
        numTwo.text = String(lottoNum[1])
        numThree.text = String(lottoNum[2])
        numFour.text = String(lottoNum[3])
        numFive.text = String(lottoNum[4])
        numSix.text = String(lottoNum[5])
        numSeven.text = String(lottoNum[6])
    }
}
