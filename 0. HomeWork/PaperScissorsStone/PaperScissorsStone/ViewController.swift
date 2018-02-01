//
//  ViewController.swift
//  PaperScissorsStone
//
//  Created by James on 2018/1/30.
//  Copyright © 2018年 James C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttonCollection: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for button in buttonCollection {
            button.imageView?.contentMode = .scaleAspectFit
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

