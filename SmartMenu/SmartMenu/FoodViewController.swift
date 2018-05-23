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
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var quantityStepper: UIStepper!
    
    @IBOutlet weak var foodImage: UIImageView!
    @IBAction func addOrMinus(_ sender: UIStepper) {
        let quantity = Int(sender.value) 
        order.setQuantity(quantity, of: food)
        quantityLabel.text = String(quantity)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assert(food != nil)
        assert(order != nil)
        nameLabel.text = food.name
        descriptionLabel.text = food.description
        costLabel.text = NSString(format: "$%.2f",food.cost) as String
        quantityLabel.text = String(order.quantityOf(food: food))
        quantityStepper.value = Double(order.quantityOf(food: food))
        let myFoodImage: UIImage! = UIImage(named: food.imageData)
        foodImage.image = myFoodImage
    }
}
