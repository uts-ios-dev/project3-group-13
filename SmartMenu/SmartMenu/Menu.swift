//
//  Menu.swift
//  SmartMenu
//
//  Created by Rhys Biddle on 9/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import Foundation

struct Menu{
    var date : Date
    var foodItems : [Food]
    
    init (date : Date, foodItems : [Food]){
        self.date = date
        self.foodItems = foodItems
        self.validateFoodItems()
        self.foodItems = foodItems
        validateFoodItems()
    }
    
    mutating func validateFoodItems(){
        self.foodItems = self.foodItems.filter({$0.validateTimeConstraints(date : self.date)})
    }
    
}
