//
//  Food.swift
//  SmartMenu
//
//  Created by Rhys Biddle on 9/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import Foundation

enum FoodType{
    case starter, main, dessert, light, burger, pizza, grill
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
    /*
    enum CodingKeys : String, CodingKey{
        case name, description, foodType, cost, imageData, waitTimeMinutes, timeConstraints, suggestions
    }
    
    func encode (to encoder : Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        //try container.encode
        try container.encode(foodType, forKey: .foodType)
        try container.encode(cost, forKey: .cost)
        try container.encode(imageData, forKey: .imageData)
        try container.encode(waitTimeMinutes, forKey: .waitTimeMinutes)
        try container.encode(timeConstraints, forKey: .timeConstraints)
        try container.encode(suggestions, forKey: .suggestions)
    }
    
    required init(from decoder : Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        score = try container.decode(Int.self, forKey: .score)
        frameCount = try container.decode(Int.self, forKey: .frameCount)
        lastPoppedBubble = nil
        numBubblesPopped = 0
        bubbles = []
    }
 */
}
