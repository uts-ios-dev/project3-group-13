//
//  FoodSection.swift
//  SmartMenu
//
//  Created by David Lang on 20/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import Foundation

struct FoodSection {
    var foodType: FoodType
    var foodList: [Food]
    
    static func fromList(_ list: [Food]) -> [FoodSection] {
        var map: [FoodType: [Food]] = [:]
        for food in list {
            if map[food.type]==nil {
                map[food.type] = []
            }
            map[food.type]?.append(food)
        }
        var sections: [FoodSection] = []
        for (foodType, foodList) in map {
            sections.append(FoodSection(foodType: foodType, foodList: foodList))
        }
        return sections
    }
}
