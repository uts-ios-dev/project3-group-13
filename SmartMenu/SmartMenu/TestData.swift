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
        
        self.foodItems = [
            Food(name: "Bircher Muesli", description: "with fresh fruit and nuts", type: FoodType.light, cost: 5, imageData: "images (1).jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 10),
            Food(name: "Crossaint", description: "with ham and cheese", type: FoodType.light, cost: 6.5, imageData: "images (2).jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 10),
            Food(name: "Penny Lane's Big Breakfast", description: "Two eggs of your choice, roast tomato, sauteed muchroom and spinach, sliced avocado, bacon, sausage, hash brown. Served with a side of sourdough", type: FoodType.main, cost: 18, imageData: "images (50).jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 17),
            Food(name: "Bacon and Egg Roll", description: "Fried egg, bacon, aioli, wild rocket and BBQ suace on a super soft milk bun", type: FoodType.light, cost: 6.50, imageData: "images (3).jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 12),
            Food(name: "Mushroom and Egg Roll", description: "Fried eggs, suateed mushrooms, aioli,  wild rocket and BBQ suace on a super soft milk bun", type: FoodType.light, cost: 6.50, imageData: "images (4).jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 12),
            Food(name: "Plain Crossaint", description: "Toasted crossaint with butter on side", type: FoodType.light, cost: 3.50, imageData: "images (5).jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 6),
            Food(name: "Cheese & Tomato Crossaint", description: "Toasted croassaint with cheese and tomato", type: FoodType.light, cost: 6.50, imageData: "images (6).jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 9),
            Food(name: "Ham & Cheese Crossaint", description: "Toasted croassaint with ham and cheese", type: FoodType.light, cost: 6.50, imageData: "images (7).jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 9),
            Food(name: "Corn Fritters", description: "with bacon, sour cream & Guacamole", type: FoodType.main, cost: 13.0, imageData: "images (8).jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 15),
            Food(name: "Belgian Waffles with Bacon & Maple syrup", description: "Two belgian waffles with bacon and maple syrup", type: FoodType.main, cost: 14.0, imageData: "images (9).jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 15),
            Food(name: "Eggs with Avocado & Fetta on Toast", description: "Smashed & seasoned avocado on toast with fetta cheese and two poached eggs", type: FoodType.light, cost: 12.0, imageData: "images (10).jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 15),
            Food(name: "Granola & Yoghurt Cup", description: "with fresh strawberries", type: FoodType.light, cost: 5.0, imageData: "images (11).jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 10),
            Food(name: "Shoestring fries", description: "with aioli", type: FoodType.light, cost: 5, imageData: "images (12).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 10),
            Food(name: "Sweet Potato Chips", description: "with aioli", type: FoodType.light, cost: 6, imageData: "images (13).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 10),
            Food(name: "Side Garden Salad", description: "with tomato, cucumber, onion and a balsamic dressing", type: FoodType.light, cost: 6, imageData: "images (14).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 5),
            Food(name: "Side Rocket & Parmesan Salad", description: "with tomato and a balsamic dressing", type: FoodType.light, cost: 6, imageData: "images (15).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 5),
            Food(name: "Trio of Dips", description: "served with toasted sourdough", type: FoodType.light, cost: 12, imageData: "images (16).jpg", suggestions: [], timeConstraints: [lunchConstraint], waitTimeMinutes: 10),
            Food(name: "Antipasto Platter", description: "selection of cured meats, cheese and roast vegetables", type: FoodType.light, cost: 16, imageData: "images (17).jpg", suggestions: [], timeConstraints: [lunchConstraint], waitTimeMinutes: 12),
            Food(name: "Vegetarian Tasting Plate", description: "selection of cured meats, cheese and roast vegetables", type: FoodType.light, cost: 12, imageData: "images (18).jpg", suggestions: [], timeConstraints: [lunchConstraint], waitTimeMinutes: 10),
            Food(name: "Mediterranean Tasting Plate", description: "mushroom arancini with harrissa mayonaisse, salt & pepper squid with aioli", type: FoodType.light, cost: 12, imageData: "images (19).jpg", suggestions: [], timeConstraints: [lunchConstraint], waitTimeMinutes: 10),
            Food(name: "Salt & Pepper Squid", description: "with aioli and lemon/lime", type: FoodType.main, cost: 12, imageData: "images (20).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Beef, Mushroom & Real Ale Ragu", description: "served with house mashed potato", type: FoodType.main, cost: 12, imageData: "images (21).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Chicken Schnitzel", description: "House-crumbed chicken breast schnitzel served with chips tomato sauce & lemon-wedge", type: FoodType.main, cost: 14, imageData: "images (22).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Chicken Parmigiana", description: "House-crumbed chicken breast schnitzel with Neapolitan sauce and cheese, with chips tomato sauce & lemon-wedge", type: FoodType.main, cost: 12, imageData: "images (23).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Prawn Fetuccini", description: "with bacon tomato and mild chilli", type: FoodType.main, cost: 15, imageData: "images (24).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Bangers & Mash", description: "two german kransky sausages with mashed potato onion and gravy", type: FoodType.main, cost: 15, imageData: "images (25).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Angus Rump Steak", description: "200g, served with mash potato and onion gravy", type: FoodType.main, cost: 14, imageData: "images (26).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 20),
            Food(name: "T-Bone Steak", description: "300g, served with mash potato and onion gravy", type: FoodType.main, cost: 15, imageData: "images (27).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 20),
            Food(name: "Grilled Barramundi", description: "with tartare sauce, served with mash potato and onion gravy", type: FoodType.main, cost: 19, imageData: "images (28).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 20),
            Food(name: "Classic Cheese", description: "Wagyu beef patty with cheddar cheese, tomato, lettuce, tomato sauce and mayo", type: FoodType.main, cost: 12, imageData: "images (29).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Grilled Chicken", description: "Grilled chicken tenderloins with tomato, lettuce, aioli and avocado salsa", type: FoodType.main, cost: 13, imageData: "images (30).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Fish Burger", description: "House-crumbed fish fillet with a lemon mayonnaise, cheddar cheese, tomato, lettuce and relish", type: FoodType.main, cost: 13, imageData: "images (31).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Beef & Bacon", description: "Wagyu beef patty, bacon, lettuce, tomato, cheddar cheese, pickles, aioli & tomato relish", type: FoodType.main, cost: 16, imageData: "images (32).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Mexican Chicken", description: "Chili and lime coated chicken breast with corn salsa and avocado", type: FoodType.main, cost: 16, imageData: "images (33).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Pulled Mushroom", description: "Assorted mushrooms with slaw and chilli aioli", type: FoodType.main, cost: 13, imageData: "images (34).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Beef Nachos", description: "with spicy salsa, guacamole, sour cream and cheese", type: FoodType.main, cost: 14, imageData: "images (35).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Vegetarian Nachos", description: "with spicy salsa, guacamole, sour cream and cheese", type: FoodType.main, cost: 12, imageData: "images (36).jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Garlic & Cheese", description: "ground garlic & mozzarella cheese", type: FoodType.main, cost: 8, imageData: "images (37).jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Margherita Pizza", description: "Fresh tomato, basil and mozzarella", type: FoodType.main, cost: 12, imageData: "images (38).jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Hawaian Pizza", description: "Shredded ham, pineapple and mozarella cheese", type: FoodType.main, cost: 13, imageData: "images (39).jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Prosciutto Pizza", description: "Cherry tomato, wild rocket, parmesan cheese and thinly slice prosciutto", type: FoodType.main, cost: 15, imageData: "images (40).jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Vegetarian", description: "Fresh mushrooms, capsicum, olives, grilled eggplant, pineapple and mozzarella cheese", type: FoodType.main, cost: 14, imageData: "images (41).jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Chorizo, Chill & Garlic Prawns", description: "with mozarella cheese and drizzled salsa verde", type: FoodType.main, cost: 17, imageData: "images (42).jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "The Penny Lane Supreme", description: "Minced beef, salami, chorizo, bacon, capsicum, olives, pineapple and mozzarella cheese", type: FoodType.main, cost: 17, imageData: "images (43).jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Nutella Pizza", description: "with fresh strawberries", type: FoodType.dessert, cost: 14, imageData: "images (44).jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Passionfruit Pannacotta", description: "images (45).jpg", type: FoodType.dessert, cost: 9, imageData: "", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 5),
            Food(name: "Sticky Date Pudding", description: "served with vanilla ice-cream", type: FoodType.dessert, cost: 9, imageData: "images (46).jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 5),
            Food(name: "Chocolate Fondant", description: "served with vanilla ice-cream", type: FoodType.dessert, cost: 9, imageData: "images (47).jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 5),
            Food(name: "Apple & Salted Caramel Tart", description: "images (48).jpg", type: FoodType.dessert, cost: 9, imageData: "", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 5),
            Food(name: "Belgian Waffles", description: "Two waffles with fresh strawberries, sliced banana & maple syrup", type: FoodType.dessert, cost: 14, imageData: "images (49).jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 5)]
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



