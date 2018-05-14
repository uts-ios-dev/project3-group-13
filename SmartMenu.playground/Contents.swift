//: Playground - noun: a place where people can play

import UIKit

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

enum FoodType {
    case alcoholicDrink, nonAlcoholicDrink, starter, side, main, dessert, light
}

// Food struct
struct Food{
    let name : String
    let description : String
    let type : FoodType
    let cost : Double
    let imageData : String
    let waitTimeMinutes : Int
    let timeConstraints : [TimeConstraint]
    let suggestions : [Food]
    
    init (name : String, description : String, type : FoodType, cost : Double, imageData : String, suggestions : [Food], timeConstraints : [TimeConstraint], waitTimeMinutes : Int){
        self.name = name
        self.description = description
        self.type = type
        self.cost = cost
        self.imageData = imageData
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
    let date : Date
    let foodItems : [Food]
    
    init (date : Date, foodItems : [Food]){
        self.date = date
        self.foodItems = foodItems.filter({$0.validateTimeConstraints(date : date)})
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
    
    /*
    static func ==( leftOrderItem : OrderItem, rightOrderItem : OrderItem) -> bool{
        if (leftOrderItem.food == rightOrderItem.food) && (leftOrderItem.quantity == rightOrderItem.quantity) && (leftOrderItem.orderDate == rightOrderItem.orderDate) {
            return false
        }
    }
  */
    
    func debug(){
        print ("\(food.name), \(quantity), \(orderDate)")
    }
}

struct Order{
    var orderItems : [OrderItem]
    
    init(orderItem : OrderItem){
        self.orderItems = [orderItem]
    }
    
    init(orderItems : [OrderItem]){
        self.orderItems = orderItems
    }
    
    mutating func addOrderItem(orderItem : OrderItem){
        orderItems.append(orderItem)
    }
    
    mutating func clear(){
        orderItems.removeAll()
    }
   
    // TODO overload the == and != operators for both Food and OrderItem
    mutating func removeOrderItem(orderItem : OrderItem){
        self.orderItems = self.orderItems.filter({($0.orderDate != orderItem.orderDate) && ($0.food.name != orderItem.food.name)})
    }
   
    func debug(){
        for orderItem in orderItems{
            orderItem.debug()
        }
    }
}

// Demo

let calendar = Calendar.current
calendar.locale

// set up time constraints

let breakfastConstraint = TimeConstraint(calendar: calendar, startOfConstraint: 7, endOfConstraint: 10, calendarComponent : Calendar.Component.hour)
let lunchTimeConstraint = TimeConstraint(calendar: calendar, startOfConstraint: 11, endOfConstraint: 15, calendarComponent : Calendar.Component.hour)
let dinnerConstraint = TimeConstraint(calendar: calendar, startOfConstraint: 15, endOfConstraint: 20, calendarComponent : Calendar.Component.hour)
let lunchDinnerConstraint = TimeConstraint(calendar: calendar, startOfConstraint: 11, endOfConstraint: 20, calendarComponent: Calendar.Component.hour)
let weekendConstraint = TimeConstraint(calendar: calendar, startOfConstraint: 6, endOfConstraint: 7, calendarComponent: Calendar.Component.weekday)


//Set up some food


let bircherMuesli = Food(name: "Bircher Muesli", description: "with fresh fruit and nuts", type: FoodType.light, cost: 5, imageData: "", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 10)

let hamCheeseCrossaint = Food(name: "Crossaint", description: "with ham and cheese", type: FoodType.light, cost: 6.5, imageData: "", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 10)

let bigBreakfastCrossaint = Food(name: "Penny Lane's Big Breakfast", description: "Two eggs of your choice, roast tomato, sauteed muchroom and spinach, sliced avocado, bacon, sausage, hash brown. Served with a side of sourdough    ", type: FoodType.main, cost: 18, imageData: "", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 15)

let shoestringFries = Food(name: "Shoestring fries", description: "with aioli", type: FoodType.light, cost: 5, imageData: "", suggestions: [], timeConstraints: [lunchDinnerConstraint], waitTimeMinutes: 10)

let cheeseBurger = Food(name: "Classic Cheese Burger", description: "Wagyu beef patty with cheddar cheese, tomato, lettuce, tomato sauce and mayo", type: FoodType.main, cost: 12, imageData: "", suggestions: [], timeConstraints: [lunchDinnerConstraint], waitTimeMinutes: 15)

let nachos = Food(name: "Beef Nachos", description: "with spicy salsa, guacamole, sour cream and cheese", type: FoodType.main, cost: 14, imageData: "", suggestions: [], timeConstraints: [lunchTimeConstraint], waitTimeMinutes: 15)

let margheritaPizza = Food(name: "Margherita Pizza", description: "Fresh tomato, basil and mozzarella", type: FoodType.main, cost: 12, imageData: "", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15)

let foodItems = [bircherMuesli, hamCheeseCrossaint, bigBreakfastCrossaint, shoestringFries, cheeseBurger, nachos, margheritaPizza]


//Set up some dates

let morningDateComponents = DateComponents(calendar: calendar, timeZone: nil, era: nil, year: 2018, month: 10, day: 10, hour: 10, minute: 30, second: 0, nanosecond: 0, weekday: nil, weekdayOrdinal: nil, quarter: nil, weekOfMonth: nil, weekOfYear: nil, yearForWeekOfYear: nil)
let morningDateTime = calendar.date(from: morningDateComponents)

let sundayMorningDateComponents = DateComponents(calendar: calendar, timeZone: nil, era: nil, year: 2018, month: 5, day: 12, hour: 9, minute: 30, second: 0, nanosecond: 0, weekday: nil, weekdayOrdinal: nil, quarter: nil, weekOfMonth: nil, weekOfYear: nil, yearForWeekOfYear: nil)
let sundayMorningDateTime = calendar.date(from: sundayMorningDateComponents)

let lunchDateComponents = DateComponents(calendar: calendar, timeZone: nil, era: nil, year: 2018, month: 5, day: 13, hour: 15, minute: 30, second: 0, nanosecond: 0, weekday: nil, weekdayOrdinal: nil, quarter: nil, weekOfMonth: nil, weekOfYear: nil, yearForWeekOfYear: nil)
let lunchDateTime = calendar.date(from: lunchDateComponents)



//Set up some menus


let morningMenu = Menu(date: morningDateTime!, foodItems: foodItems)
let sundayMorningMenu = Menu(date: sundayMorningDateTime!, foodItems:  foodItems)
let lunchMenu = Menu(date: lunchDateTime!, foodItems: foodItems)
let rightNowMenu = Menu(date: Date(), foodItems: foodItems)


//Playground has no debugging - simple print statements to roughly check functionality
//menu funtionality


print ("morning menu")
morningMenu.debug()
print ("\nsunday morning menu")
sundayMorningMenu.debug()
print ("\nlunch menu")
lunchMenu.debug()
print ("\nright now menu")
rightNowMenu.debug()


// order functionality

let bircherOrder = OrderItem(food : bircherMuesli, quantity : 1, orderDate : Date())
let crossaintOrder = OrderItem(food: hamCheeseCrossaint, quantity: 2, orderDate: Date())
var order = Order(orderItem: bircherOrder)

print ("\nnew order")
order.debug()
order.removeOrderItem(orderItem: bircherOrder)
print ("\nremove muesli")
order.debug()
order.addOrderItem(orderItem: crossaintOrder)
print ("\nadd crossaints")
order.debug()



