//: Playground - noun: a place where people can play

import UIKit


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

 

// Food struct
struct Food{
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
    
    func debug(){
        for food in foodItems{
            print (food.name)
        }
    }
}

struct OrderItem{
    let food : Food
    let quantity : Int
    let orderDate : Date
    //let expectedReadyDate : Date
    
    init(food : Food, quantity : Int, orderDate : Date){
        self.food = food
        self.quantity = quantity
        self.orderDate = orderDate
    }
}


struct Order{
    let orderItems : [OrderItem]
}


// Demo

let calendar = Calendar.current
calendar.locale

// set up time constraints

let morningTimeConstraint = TimeConstraint(calendar: calendar, start: 7, end: 10, calendarComponent : Calendar.Component.hour)
let lunchTimeConstraint = TimeConstraint(calendar: calendar, start: 11, end: 15, calendarComponent : Calendar.Component.hour)
let weekendConstraint = TimeConstraint(calendar: calendar, start: 6, end: 7, calendarComponent: Calendar.Component.weekday)


//Set up some food

let eggs = Food(name: "eggs", description: "sunny side up", cost: 9.99, suggestions: [], timeConstraints: [morningTimeConstraint], waitTimeMinutes: 15)
let steak = Food(name: "steak", description: "medium", cost: 19.99, suggestions: [], timeConstraints: [lunchTimeConstraint], waitTimeMinutes: 25)
let morningWeekdayCoffee = Food(name: "coffee", description: "", cost: 5, suggestions: [], timeConstraints:[morningTimeConstraint, weekendConstraint] , waitTimeMinutes: 20)

//Set up some dates

let morningDateComponents = DateComponents(calendar: calendar, timeZone: nil, era: nil, year: 2018, month: 10, day: 10, hour: 10, minute: 30, second: 0, nanosecond: 0, weekday: nil, weekdayOrdinal: nil, quarter: nil, weekOfMonth: nil, weekOfYear: nil, yearForWeekOfYear: nil)
let morningDateTime = calendar.date(from: morningDateComponents)

let sundayMorningDateComponents = DateComponents(calendar: calendar, timeZone: nil, era: nil, year: 2018, month: 5, day: 12, hour: 9, minute: 30, second: 0, nanosecond: 0, weekday: nil, weekdayOrdinal: nil, quarter: nil, weekOfMonth: nil, weekOfYear: nil, yearForWeekOfYear: nil)
let sundayMorningDateTime = calendar.date(from: sundayMorningDateComponents)

let lunchDateComponents = DateComponents(calendar: calendar, timeZone: nil, era: nil, year: 2018, month: 5, day: 13, hour: 15, minute: 30, second: 0, nanosecond: 0, weekday: nil, weekdayOrdinal: nil, quarter: nil, weekOfMonth: nil, weekOfYear: nil, yearForWeekOfYear: nil)
let lunchDateTime = calendar.date(from: lunchDateComponents)



//Set up some menus


let morningMenu = Menu(date: morningDateTime!, foodItems: [eggs, steak, morningWeekdayCoffee])
let sundayMorningMenu = Menu(date: sundayMorningDateTime!, foodItems: [eggs, steak, morningWeekdayCoffee])
let lunchMenu = Menu(date: lunchDateTime!, foodItems: [eggs, steak, morningWeekdayCoffee])
let rightNowMenu = Menu(date: Date(), foodItems: [eggs, steak, morningWeekdayCoffee])


//Playground has no debugging

print ("morning menu")
morningMenu.debug()
print ("sunday morning menu")
sundayMorningMenu.debug()
print ("lunch menu")
lunchMenu.debug()
print ("right now menu")
rightNowMenu.debug()
