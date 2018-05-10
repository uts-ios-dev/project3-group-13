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
    
    var flag : Bool!
    let calendar : Calendar
    let start : Int
    let end : Int
    let calendarComponent : Calendar.Component
    
    init(calendar : Calendar, start : Int, end : Int, calendarComponent : Calendar.Component){
        self.calendar = calendar
        self.start = start
        self.end = end
        self.calendarComponent = calendarComponent
    }
    
    func isSatisfied(date : Date) -> Bool{
        let dateComponents = self.calendar.dateComponents([self.calendarComponent], from : date)
        if let dateComponent = dateComponents.value(for: calendarComponent){
            if ((dateComponent >= self.start) && (dateComponent <= self.end)){
                return true
            }
        }
        return false
    }
}
