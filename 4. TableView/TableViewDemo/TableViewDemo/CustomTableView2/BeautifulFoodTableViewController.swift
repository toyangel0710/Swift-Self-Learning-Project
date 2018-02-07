//
//  BeautifulFoodTableViewController.swift
//  TableViewDemo
//
//  Created by James on 2018/2/7.
//  Copyright © 2018年 James C. All rights reserved.
//

import UIKit

class BeautifulFoodTableViewController: UITableViewController {
    var foodNames = ["漢堡","咖哩","調酒","蛋捲","炸雞","炒麵","炒飯","炸春捲","熱狗","冰淇淋","小羊排","月亮蝦餅","鬆餅","義大利麵","披薩","沙拉","生魚片","湯包","壽司","玉米餅"]
    var foodImages = ["buger","curry","drink","egg_roll","fried_chicken","fried_noodle","fried_rice","fried_spring_roll","hotdog","ice_cream","lamb","moon_shrimp_cake","pancake","pasta","pizza","salad","sashimi","soup_dumplings","suhi","taco"]
    var foodLocation = ["台北","台中","台北","高雄","台北","高雄","高雄","台南","台北","台北","台北","高雄","台北","台中","台北","台北","高雄","高雄","台北","屏東",]
    var foodType = ["美式","印度料理","飲料","小吃","小吃","小吃","小吃","點心","點心","甜點","西式","越式","點心","義式","義式","美式","日式","台式","日式","墨西哥料理"]
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foodNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! BeautifulFoodTableViewCell

        cell.foodImage.image = UIImage(named: foodImages[indexPath.row])
        cell.foodName.text = foodNames[indexPath.row]
        cell.foodLocation.text = foodLocation[indexPath.row]
        cell.foodType.text = foodType[indexPath.row]
        
        return cell
    }
    

    

}
