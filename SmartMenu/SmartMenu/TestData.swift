//
//  TestData.swift
//  SmartMenu
//
//  Created by Rhys Biddle on 14/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import Foundation

struct TestData{

    var calendar : Calendar
    var foodItems : [Food]
    var breakfastConstraint : TimeConstraint
    var lunchConstraint : TimeConstraint
    var dinnerConstraint : TimeConstraint
    
    init() {
        self.calendar = Calendar.current
        self.breakfastConstraint = TimeConstraint(calendar: calendar, startOfConstraint: 7, endOfConstraint: 10, calendarComponent : Calendar.Component.hour)
        self.lunchConstraint = TimeConstraint(calendar: calendar, startOfConstraint: 11, endOfConstraint: 15, calendarComponent : Calendar.Component.hour)
        self.dinnerConstraint = TimeConstraint(calendar: calendar, startOfConstraint: 15, endOfConstraint: 20, calendarComponent : Calendar.Component.hour)
        self.foodItems = [Food(name: "Bircher Muesli", description: "with fresh fruit and nuts", type: FoodType.light, cost: 5, imageData: "", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 10),
            Food(name: "Crossaint", description: "with ham and cheese", type: FoodType.light, cost: 6.5, imageData: "", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 10),
            Food(name: "Penny Lane's Big Breakfast", description: "Two eggs of your choice, roast tomato, sauteed muchroom and spinach, sliced avocado, bacon, sausage, hash brown. Served with a side of sourdough    ", type: FoodType.main, cost: 18, imageData: "", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 15),
        Food(name: "Shoestring fries", description: "with aioli", type: FoodType.light, cost: 5, imageData: "", suggestions: [], timeConstraints: [lunchConstraint], waitTimeMinutes: 10),
        Food(name: "Classic Cheese Burger", description: "Wagyu beef patty with cheddar cheese, tomato, lettuce, tomato sauce and mayo", type: FoodType.main, cost: 12, imageData: "", suggestions: [], timeConstraints: [lunchConstraint], waitTimeMinutes: 15),
        Food(name: "Beef Nachos", description: "with spicy salsa, guacamole, sour cream and cheese", type: FoodType.main, cost: 14, imageData: "", suggestions: [], timeConstraints: [lunchConstraint], waitTimeMinutes: 15),
        Food(name: "Margherita Pizza", description: "Fresh tomato, basil and mozzarella", type: FoodType.main, cost: 12, imageData: "", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15),
        Food(name: "Hawaian Pizza", description: "Shredded ham, pineapple and mozarella cheese", type: FoodType.main, cost: 13, imageData: "", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15),
         Food(name: "Prosciutto Pizza", description: "Cherry tomato, wild rocket, parmesan cheese and thinly slice prosciutto", type: FoodType.main, cost: 15, imageData: "", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15)]
    }
    
    func getTestMenu() -> Menu{
        return Menu(foodItems: foodItems)
    }
    
    func getTestOrder() -> Order {
        let o = Order()
        let m = getTestMenu()
        o.add(food: m.foodItems[0])
        o.add(food: m.foodItems[1])
        o.add(food: m.foodItems[1])
        o.add(food: m.foodItems[2])
        o.add(food: m.foodItems[2])
        o.add(food: m.foodItems[2])
        return o
    }
}



