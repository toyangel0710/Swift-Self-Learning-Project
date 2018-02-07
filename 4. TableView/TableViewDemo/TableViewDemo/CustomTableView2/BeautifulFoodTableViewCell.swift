//
//  BeautifulFoodTableViewCell.swift
//  TableViewDemo
//
//  Created by James on 2018/2/7.
//  Copyright © 2018年 James C. All rights reserved.
//

import UIKit

class BeautifulFoodTableViewCell: UITableViewCell {
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var foodType: UILabel!
    @IBOutlet weak var foodLocation: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
