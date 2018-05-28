//
//  Food.swift
//  SmartMenu
//
//  Created by Rhys Biddle on 9/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import Foundation

// Food object
class Food: Hashable {
    // declarations
    let name : String
    let description : String
    let type : FoodType
    let cost : Double
    let imageData : String
    let waitTimeMinutes : Int
    let timeConstraints : [TimeConstraint]
    let suggestions : [Food]
    
    // instance methods
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
    
    // hashable protocol
    var hashValue: Int {
        return name.hashValue ^ description.hashValue ^ type.hashValue ^ cost.hashValue
    }
    
    static func ==(lhs: Food, rhs: Food) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}
