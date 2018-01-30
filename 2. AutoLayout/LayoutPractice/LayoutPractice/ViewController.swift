//
//  ViewController.swift
//  LayoutPractice
//
//  Created by James on 2018/1/29.
//  Copyright © 2018年 James C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var randomMealImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func randomPickAMeal(_ sender: UIButton) {
        arc4random_uniform(<#T##__upper_bound: UInt32##UInt32#>)
        let index = Int(arc4random_uniform(3))
        switch index {
        case 0:
            randomMealImage.image = UIImage(named: "pasta")
        case 1:
            randomMealImage.image = UIImage(named: "buger")
        case 2:
            randomMealImage.image = UIImage(named: "pizza")
        default:
            randomMealImage.image = nil
        }
    }
    
}

