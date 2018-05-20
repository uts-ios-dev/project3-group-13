//
//  FoodViewController.swift
//  SmartMenu
//
//  Created by UTS on 14/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController {
    var food: Food!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assert(food != nil)
        nameLabel.text = food.name
        descriptionLabel.text = food.description
    }
}
