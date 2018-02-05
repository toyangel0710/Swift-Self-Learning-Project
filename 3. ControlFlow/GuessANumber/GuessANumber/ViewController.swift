//
//  ViewController.swift
//  GuessANumber
//
//  Created by James on 2018/2/1.
//  Copyright © 2018年 James C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var inputNumber: UITextField!
    var answer = 0
    var min = 1
    var max = 100

    //初始化
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        answer = Int(arc4random_uniform(100)) + 1
        print("answer: \(answer)")
    }
    
    //MARK : 定義按鈕按了之後要檢查有沒有答對
    //檢查textFiled裡面的數值有沒有跟answer一樣
    @IBAction func checkAnswer(_ sender: UIButton) {
        let number = Int(inputNumber.text!)!
        if number == answer {
            //答對了
            print("答對了")
            titleLabel.text = "答對了"
        } else {
            //繼續猜
            if number > answer {
                max = number
            } else {
                min = number
            }
            
            titleLabel.text = "數字從\(min)~\(max)"
        }
    }
    
    @IBOutlet weak var primeNumberLabel: UITextField!
    
    @IBOutlet weak var primeResult: UILabel!
    @IBAction func guestPrimeNumber(_ sender: UIButton) {
        var isPrime = true //判斷是否為質數
        var number = Int(primeNumberLabel.text!)!
        
        for index in 2...number-1 {
            if number % index == 0 {
                isPrime = false
                break
            }
        }
        
        if isPrime {
            primeResult.text = "是質數"
        } else {
            primeResult.text = "不是質數"
        }
    }
    
}

