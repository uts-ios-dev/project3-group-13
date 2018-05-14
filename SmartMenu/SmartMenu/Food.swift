//
//  Food.swift
//  SmartMenu
//
//  Created by Rhys Biddle on 9/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import Foundation

enum FoodType {
    case alcoholicDrink, nonAlcoholicDrink, starter, side, main, dessert, light
}

// Food object
class Food {
    let name : String
    let description : String
    let type : FoodType
    let cost : Double
    let imageData : String
    let waitTimeMinutes : Int
    let timeConstraints : [TimeConstraint]
    let suggestions : [Food]
    
    init (name : String, description : String, type : FoodType, cost : Double, imageData : String, suggestions : [Food], timeConstraints : [TimeConstraint], waitTimeMinutes : Int) {
        self.name = name
        self.description = description
        self.type = type
        self.cost = cost
        self.imageData = imageData
        self.suggestions = suggestions
        self.timeConstraints = timeConstraints
        self.waitTimeMinutes = waitTimeMinutes
    }
    
    func isValid(date : Date) -> Bool {
        for timeConstraint in self.timeConstraints {
            if !timeConstraint.isSatisfied(date : date) {
                return false
            }
        }
        return true
    }
}
