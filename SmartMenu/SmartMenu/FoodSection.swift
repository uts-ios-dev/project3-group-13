//
//  FoodSection.swift
//  SmartMenu
//
//  Created by David Lang on 20/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import Foundation

struct FoodSection {
    var header: String
    var list: [Food]
    
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
            sections.append(FoodSection(header: foodType.description, list: foodList))
        }
        if sections.count == 0 {
            sections.append(FoodSection(header: "Nothing available at this time", list: []))
        }
        return sections
    }
}
