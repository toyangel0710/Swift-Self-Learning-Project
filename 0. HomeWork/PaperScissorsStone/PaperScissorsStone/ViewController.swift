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
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var loseLabel: UILabel!
    @IBOutlet weak var yourPlayImage: UIImageView!
    @IBOutlet weak var systemPlayImage: UIImageView!
    
    var winCount = 0 {
        didSet {
            winLabel.text = "你贏了\(winCount)次"
        }
    }
    
    var loseCount = 0 {
        didSet {
            loseLabel.text = "你輸了\(loseCount)次"
        }
    }
    var systemSign = -1 {
        didSet {
            switch systemSign {
            case 0:
                systemPlayImage.image = UIImage(named:"paper")
            case 1:
                systemPlayImage.image = UIImage(named:"scissors")
            case 2:
                systemPlayImage.image = UIImage(named:"stone")
            default:
                systemPlayImage.image = nil
            }
        }
    }
    
    var yourSign = -1 {
        didSet {
            switch yourSign {
            case 0:
                yourPlayImage.image = UIImage(named:"paper")
            case 1:
                yourPlayImage.image = UIImage(named:"scissors")
            case 2:
                yourPlayImage.image = UIImage(named:"stone")
            default:
                yourPlayImage.image = nil
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for button in buttonCollection {
            button.imageView?.contentMode = .scaleAspectFit
        }
    }
    
    @IBAction func playGame(_ sender: UIButton) {
        yourSign = buttonCollection.index(of: sender)!
        systemSign = Int(arc4random_uniform(3))
        
        switch yourSign {
        case 0:
            switch systemSign {
            case 1 : loseCount += 1
            case 2 : winCount += 1
            default: return
            }
        case 1:
            switch systemSign {
            case 0 : winCount += 1
            case 2 : loseCount += 1
            default: return
            }
        case 2:
            switch systemSign {
            case 0 : loseCount += 1
            case 1 : winCount += 1
            default: return
            }
        default:
            return
        }
    }
}

