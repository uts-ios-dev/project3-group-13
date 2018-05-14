//
//  Menu.swift
//  SmartMenu
//
//  Created by Rhys Biddle on 9/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import Foundation

class Menu {
    var foodItems : [Food]
    
    init (foodItems : [Food]) {
        self.foodItems = foodItems
    }
    
    func validFood(at: Date) -> [Food] {
        return self.foodItems.filter({$0.isValid(date : at)})
    }
}
