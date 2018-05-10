//
//  Food.swift
//  SmartMenu
//
//  Created by Rhys Biddle on 9/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import Foundation

struct Food{
    //struct to hold food items
    
    let name : String
    //let image :
    let description : String
    let cost : Double
    let waitTimeMinutes : Int
    let timeConstraints : [TimeConstraint]
    let suggestions : [Food]
    
    init (name : String, description : String, cost : Double, suggestions : [Food], timeConstraints : [TimeConstraint], waitTimeMinutes : Int){
        self.name = name
        self.description = description
        self.cost = cost
        self.suggestions = suggestions
        self.timeConstraints = timeConstraints
        self.waitTimeMinutes = waitTimeMinutes
    }
    
    func validateTimeConstraints(date : Date) -> Bool {
        for timeConstraint in self.timeConstraints{
            if !timeConstraint.isSatisfied(date : date){
                return false
            }
        }
        return true
    }
}
