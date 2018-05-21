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
    var order: Order!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var order: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assert(food != nil)
        assert(order != nil)
        nameLabel.text = food.name
        descriptionLabel.text = food.description
        
    }
    override func viewDidAppear(_ animated: Bool) {
      order.text = "Order: " + String(ordered)
    }
@IBAction func addOrder(_ sender: UIBarButtonItem) {
    ordered += 1
    print (ordered)
    order.text = "Order: " + String(ordered)
}

@IBAction func reduceOrder(_ sender: UIBarButtonItem) {
    if ordered > 0 {
        ordered -= 1
    order.text = "Order: " + String(ordered)
    print (ordered)
        
        }
    }
}
