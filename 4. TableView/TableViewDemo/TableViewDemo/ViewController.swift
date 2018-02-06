//
//  ViewController.swift
//  TableViewDemo
//
//  Created by James on 2018/2/6.
//  Copyright © 2018年 James C. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var foodNames = ["漢堡","咖哩","調酒","蛋捲","炸雞","炒麵","炒飯","炸春捲","熱狗","冰淇淋","小羊排","月亮蝦餅","鬆餅","義大利麵","披薩","沙拉","生魚片","湯包","壽司","玉米餅"]
    var foodImages = ["buger","curry","drink","egg_roll","fried_chicken","fried_noodle","fried_rice","fried_spring_roll","hotdog","ice_cream","lamb","moon_shrimp_cake","pancake","pasta","pizza","salad","sashimi","soup_dumplings","suhi","taco"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    /*
     * 通知TableView總共有幾列
     */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodNames.count
    }
    /*
     * 每次表格列要顯示時會被呼叫
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = foodNames[indexPath.row]
        cell.imageView?.image = UIImage(named:foodImages[indexPath.row])
        return cell
    }


}

