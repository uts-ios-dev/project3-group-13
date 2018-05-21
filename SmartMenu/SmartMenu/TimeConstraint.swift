//
//  TimeConstraint.swift
//  SmartMenu
//
//  Created by Rhys Biddle on 9/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import Foundation

struct TimeConstraint{
    // struct for Time Constraints
    // make use of inbuilt date and time objects in swift
    
    let calendar : Calendar
    let startOfConstraint : Int
    let endOfConstraint : Int
    let calendarComponent : Calendar.Component
    
    init(calendar : Calendar, startOfConstraint : Int, endOfConstraint : Int, calendarComponent : Calendar.Component){
        self.calendar = calendar
        self.startOfConstraint = startOfConstraint
        self.endOfConstraint = endOfConstraint
        self.calendarComponent = calendarComponent
    }
    
    func isSatisfied(date : Date) -> Bool{
        let dateComponents = self.calendar.dateComponents([self.calendarComponent], from : date)
        if let dateComponent = dateComponents.value(for: calendarComponent){
            if ((dateComponent >= self.startOfConstraint) && (dateComponent <= self.endOfConstraint)){
                return true
            }
        }
        return false
    }
}
