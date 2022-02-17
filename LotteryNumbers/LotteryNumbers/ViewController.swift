//
//  ViewController.swift
//  LotteryNumbers
//
//  Created by Trevon Costa on 2022-02-16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        header()
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
}
